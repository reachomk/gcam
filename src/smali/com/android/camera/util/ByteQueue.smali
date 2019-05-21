.class public final Lcom/android/camera/util/ByteQueue;
.super Ljava/lang/Object;
.source "ByteQueue.java"


# instance fields
.field private data:[B

.field private end:I

.field private start:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "ByteQueue"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/camera/util/ByteQueue;->data:[B

    .line 33
    iput v1, p0, Lcom/android/camera/util/ByteQueue;->start:I

    .line 34
    iput v1, p0, Lcom/android/camera/util/ByteQueue;->end:I

    return-void
.end method

.method private final increaseCapacity(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 149
    iget-object v0, p0, Lcom/android/camera/util/ByteQueue;->data:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/camera/util/ByteQueue;->end:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_1

    .line 150
    iget v0, p0, Lcom/android/camera/util/ByteQueue;->end:I

    iget v1, p0, Lcom/android/camera/util/ByteQueue;->start:I

    sub-int/2addr v0, v1

    .line 151
    add-int v1, v0, p1

    .line 152
    iget-object v2, p0, Lcom/android/camera/util/ByteQueue;->data:[B

    array-length v2, v2

    if-gt v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/util/ByteQueue;->data:[B

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_2

    .line 164
    if-lez v0, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/camera/util/ByteQueue;->data:[B

    iget v2, p0, Lcom/android/camera/util/ByteQueue;->start:I

    iget-object v3, p0, Lcom/android/camera/util/ByteQueue;->data:[B

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    :cond_0
    :goto_0
    iput v4, p0, Lcom/android/camera/util/ByteQueue;->start:I

    .line 181
    iput v0, p0, Lcom/android/camera/util/ByteQueue;->end:I

    .line 183
    :cond_1
    return-void

    .line 171
    :cond_2
    new-array v1, v1, [B

    .line 172
    if-lez v0, :cond_3

    .line 173
    iget-object v2, p0, Lcom/android/camera/util/ByteQueue;->data:[B

    iget v3, p0, Lcom/android/camera/util/ByteQueue;->start:I

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    :cond_3
    iput-object v1, p0, Lcom/android/camera/util/ByteQueue;->data:[B

    goto :goto_0
.end method


# virtual methods
.method public final pop(I)[B
    .locals 4

    .prologue
    .line 115
    iget v0, p0, Lcom/android/camera/util/ByteQueue;->start:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/camera/util/ByteQueue;->end:I

    if-gt v0, v1, :cond_0

    .line 116
    new-array v0, p1, [B

    .line 117
    iget-object v1, p0, Lcom/android/camera/util/ByteQueue;->data:[B

    iget v2, p0, Lcom/android/camera/util/ByteQueue;->start:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    iget v1, p0, Lcom/android/camera/util/ByteQueue;->start:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/camera/util/ByteQueue;->start:I

    .line 119
    return-object v0

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Byte queue is too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final popBigEndShort()S
    .locals 4

    .prologue
    .line 100
    iget v0, p0, Lcom/android/camera/util/ByteQueue;->start:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/util/ByteQueue;->end:I

    if-gt v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/camera/util/ByteQueue;->data:[B

    iget v1, p0, Lcom/android/camera/util/ByteQueue;->start:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/camera/util/ByteQueue;->start:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/android/camera/util/ByteQueue;->data:[B

    iget v2, p0, Lcom/android/camera/util/ByteQueue;->start:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/camera/util/ByteQueue;->start:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Byte queue is too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final popInto(Ljava/io/OutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    iget v0, p0, Lcom/android/camera/util/ByteQueue;->start:I

    add-int/2addr v0, p2

    iget v1, p0, Lcom/android/camera/util/ByteQueue;->end:I

    if-gt v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/camera/util/ByteQueue;->data:[B

    iget v1, p0, Lcom/android/camera/util/ByteQueue;->start:I

    invoke-virtual {p1, v0, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 134
    iget v0, p0, Lcom/android/camera/util/ByteQueue;->start:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/camera/util/ByteQueue;->start:I

    return-void

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Byte queue is too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final push(B)V
    .locals 2

    .prologue
    .line 54
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/util/ByteQueue;->increaseCapacity(I)V

    .line 55
    iget-object v0, p0, Lcom/android/camera/util/ByteQueue;->data:[B

    iget v1, p0, Lcom/android/camera/util/ByteQueue;->end:I

    aput-byte p1, v0, v1

    .line 56
    iget v0, p0, Lcom/android/camera/util/ByteQueue;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/util/ByteQueue;->end:I

    .line 57
    return-void
.end method

.method public final push([BII)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0, p3}, Lcom/android/camera/util/ByteQueue;->increaseCapacity(I)V

    .line 77
    iget-object v0, p0, Lcom/android/camera/util/ByteQueue;->data:[B

    iget v1, p0, Lcom/android/camera/util/ByteQueue;->end:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    iget v0, p0, Lcom/android/camera/util/ByteQueue;->end:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/camera/util/ByteQueue;->end:I

    .line 79
    return-void
.end method

.method public final size()I
    .locals 2

    .prologue
    .line 45
    iget v0, p0, Lcom/android/camera/util/ByteQueue;->end:I

    iget v1, p0, Lcom/android/camera/util/ByteQueue;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final skip(I)V
    .locals 2

    .prologue
    .line 141
    iget v0, p0, Lcom/android/camera/util/ByteQueue;->start:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/camera/util/ByteQueue;->end:I

    if-gt v0, v1, :cond_0

    .line 142
    iget v0, p0, Lcom/android/camera/util/ByteQueue;->start:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/util/ByteQueue;->start:I

    return-void

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Byte queue is too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "ByteDeque [ "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v0, v1

    .line 189
    :goto_0
    iget-object v3, p0, Lcom/android/camera/util/ByteQueue;->data:[B

    array-length v3, v3

    if-gt v0, v3, :cond_3

    .line 190
    iget v3, p0, Lcom/android/camera/util/ByteQueue;->start:I

    if-ne v0, v3, :cond_0

    .line 191
    const-string v3, "{ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :cond_0
    iget v3, p0, Lcom/android/camera/util/ByteQueue;->end:I

    if-ne v0, v3, :cond_1

    .line 194
    const-string v3, "} "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_1
    iget-object v3, p0, Lcom/android/camera/util/ByteQueue;->data:[B

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 198
    const-string v3, "%02X "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/camera/util/ByteQueue;->data:[B

    aget-byte v5, v5, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_3
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
