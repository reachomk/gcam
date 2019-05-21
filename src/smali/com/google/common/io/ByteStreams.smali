.class public final Lcom/google/common/io/ByteStreams;
.super Ljava/lang/Object;
.source "ByteStreams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/ByteStreams$FastByteArrayOutputStream;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 594
    new-instance v0, Lcom/google/common/io/ByteStreams$1;

    invoke-direct {v0}, Lcom/google/common/io/ByteStreams$1;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {p0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    const/16 v0, 0x2000

    new-array v2, v0, [B

    .line 104
    const-wide/16 v0, 0x0

    .line 106
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 107
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 110
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 111
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 112
    goto :goto_0

    .line 113
    :cond_0
    return-wide v0
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x20

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 166
    invoke-static {p0, v0}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 167
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method static toByteArray(Ljava/io/InputStream;I)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 176
    new-array v0, p1, [B

    move v1, p1

    .line 179
    :goto_0
    if-lez v1, :cond_2

    .line 180
    sub-int v2, p1, v1

    .line 181
    invoke-virtual {p0, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 182
    if-ne v3, v5, :cond_1

    .line 185
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 204
    :cond_0
    :goto_1
    return-object v0

    .line 187
    :cond_1
    sub-int/2addr v1, v3

    .line 188
    goto :goto_0

    .line 191
    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 192
    if-eq v1, v5, :cond_0

    .line 197
    new-instance v2, Lcom/google/common/io/ByteStreams$FastByteArrayOutputStream;

    invoke-direct {v2, v4}, Lcom/google/common/io/ByteStreams$FastByteArrayOutputStream;-><init>(B)V

    .line 198
    invoke-virtual {v2, v1}, Lcom/google/common/io/ByteStreams$FastByteArrayOutputStream;->write(I)V

    .line 199
    invoke-static {p0, v2}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 201
    array-length v1, v0

    invoke-virtual {v2}, Lcom/google/common/io/ByteStreams$FastByteArrayOutputStream;->size()I

    move-result v3

    add-int/2addr v1, v3

    new-array v1, v1, [B

    .line 202
    array-length v3, v0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    array-length v0, v0

    invoke-virtual {v2, v1, v0}, Lcom/google/common/io/ByteStreams$FastByteArrayOutputStream;->writeTo([BI)V

    move-object v0, v1

    .line 204
    goto :goto_1
.end method
