.class Lcom/android/camera/exif/CountedDataInputStream;
.super Ljava/io/FilterInputStream;
.source "CountedDataInputStream.java"


# instance fields
.field private final mByteArray:[B

.field private final mByteBuffer:Ljava/nio/ByteBuffer;

.field private mCount:I


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/exif/CountedDataInputStream;->mCount:I

    .line 16
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/camera/exif/CountedDataInputStream;->mByteArray:[B

    .line 17
    iget-object v0, p0, Lcom/android/camera/exif/CountedDataInputStream;->mByteArray:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 21
    return-void
.end method


# virtual methods
.method public final getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/camera/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public final getReadByteCount()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/android/camera/exif/CountedDataInputStream;->mCount:I

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/exif/CountedDataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 44
    iget v2, p0, Lcom/android/camera/exif/CountedDataInputStream;->mCount:I

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/camera/exif/CountedDataInputStream;->mCount:I

    .line 45
    return v1

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read([B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/exif/CountedDataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 30
    iget v2, p0, Lcom/android/camera/exif/CountedDataInputStream;->mCount:I

    if-ltz v1, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/camera/exif/CountedDataInputStream;->mCount:I

    .line 31
    return v1

    .line 30
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/exif/CountedDataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 37
    iget v2, p0, Lcom/android/camera/exif/CountedDataInputStream;->mCount:I

    if-ltz v1, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/camera/exif/CountedDataInputStream;->mCount:I

    .line 38
    return v1

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final readInt()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/exif/CountedDataInputStream;->mByteArray:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/exif/CountedDataInputStream;->readOrThrow([BII)V

    .line 95
    iget-object v0, p0, Lcom/android/camera/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 96
    iget-object v0, p0, Lcom/android/camera/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public final readOrThrow([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/camera/exif/CountedDataInputStream;->read([BII)I

    move-result v0

    .line 68
    if-eq v0, p3, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 69
    :cond_0
    return-void
.end method

.method public final readShort()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/exif/CountedDataInputStream;->mByteArray:[B

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/exif/CountedDataInputStream;->readOrThrow([BII)V

    .line 85
    iget-object v0, p0, Lcom/android/camera/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 86
    iget-object v0, p0, Lcom/android/camera/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public final readUnsignedInt()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/camera/exif/CountedDataInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public final readUnsignedShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/camera/exif/CountedDataInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final setByteOrder(Ljava/nio/ByteOrder;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 77
    return-void
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/exif/CountedDataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 51
    iget v2, p0, Lcom/android/camera/exif/CountedDataInputStream;->mCount:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/android/camera/exif/CountedDataInputStream;->mCount:I

    .line 52
    return-wide v0
.end method

.method public final skipTo(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    iget v0, p0, Lcom/android/camera/exif/CountedDataInputStream;->mCount:I

    int-to-long v0, v0

    .line 61
    sub-long v0, p1, v0

    .line 1056
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/exif/CountedDataInputStream;->skip(J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 64
    :cond_0
    return-void
.end method
