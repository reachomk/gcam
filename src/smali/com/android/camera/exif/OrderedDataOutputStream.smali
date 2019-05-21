.class final Lcom/android/camera/exif/OrderedDataOutputStream;
.super Ljava/io/FilterOutputStream;
.source "OrderedDataOutputStream.java"


# instance fields
.field private final byteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 12
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/exif/OrderedDataOutputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 16
    return-void
.end method


# virtual methods
.method public final setByteOrder(Ljava/nio/ByteOrder;)Lcom/android/camera/exif/OrderedDataOutputStream;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/exif/OrderedDataOutputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 20
    return-object p0
.end method

.method public final writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/exif/OrderedDataOutputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 32
    iget-object v0, p0, Lcom/android/camera/exif/OrderedDataOutputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 33
    iget-object v0, p0, Lcom/android/camera/exif/OrderedDataOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/camera/exif/OrderedDataOutputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 34
    return-object p0
.end method

.method public final writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/exif/OrderedDataOutputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 25
    iget-object v0, p0, Lcom/android/camera/exif/OrderedDataOutputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 26
    iget-object v0, p0, Lcom/android/camera/exif/OrderedDataOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/camera/exif/OrderedDataOutputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 27
    return-object p0
.end method
