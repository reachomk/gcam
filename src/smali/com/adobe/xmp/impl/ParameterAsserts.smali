.class public Lcom/adobe/xmp/impl/ParameterAsserts;
.super Ljava/lang/Object;
.source "ParameterAsserts.java"


# instance fields
.field private buffer:[B

.field private encoding:Ljava/lang/String;

.field private length:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 1038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1031
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->encoding:Ljava/lang/String;

    .line 1039
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->buffer:[B

    .line 1040
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->length:I

    .line 1041
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x4000

    .line 3076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3031
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->encoding:Ljava/lang/String;

    .line 3079
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->length:I

    .line 3080
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->buffer:[B

    .line 3083
    :goto_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->buffer:[B

    iget v1, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->length:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    .line 3085
    iget v1, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->length:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->length:I

    .line 3086
    if-ne v0, v2, :cond_0

    .line 3088
    iget v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->length:I

    add-int/lit16 v0, v0, 0x4000

    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/ParameterAsserts;->ensureCapacity(I)V

    goto :goto_0

    .line 3095
    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 2048
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2031
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->encoding:Ljava/lang/String;

    .line 2049
    iput-object p1, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->buffer:[B

    .line 2050
    array-length v0, p1

    iput v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->length:I

    .line 2051
    return-void
.end method

.method public static assertArrayName(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 39
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 41
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Empty array name"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 43
    :cond_1
    return-void
.end method

.method public static assertNotNull(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 123
    if-nez p0, :cond_0

    .line 125
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Parameter must not be null"

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 127
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 129
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Parameter must not be null or empty"

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 131
    :cond_1
    return-void
.end method

.method public static assertPropName(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 53
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 55
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Empty property name"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 57
    :cond_1
    return-void
.end method

.method public static assertSchemaNS(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 67
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 69
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Empty schema namespace URI"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 71
    :cond_1
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3319
    iget-object v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->buffer:[B

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 3321
    iget-object v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->buffer:[B

    .line 3322
    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->buffer:[B

    .line 3323
    iget-object v1, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->buffer:[B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3325
    :cond_0
    return-void
.end method


# virtual methods
.method public append(B)V
    .locals 3

    .prologue
    .line 3184
    iget v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->length:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/ParameterAsserts;->ensureCapacity(I)V

    .line 3185
    iget-object v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->buffer:[B

    iget v1, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->length:I

    aput-byte p1, v0, v1

    .line 3186
    return-void
.end method

.method public append([B)V
    .locals 2

    .prologue
    .line 3210
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/xmp/impl/ParameterAsserts;->append([BII)V

    .line 3211
    return-void
.end method

.method public append([BII)V
    .locals 3

    .prologue
    .line 3198
    iget v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->length:I

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/ParameterAsserts;->ensureCapacity(I)V

    .line 3199
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->buffer:[B

    iget v2, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->length:I

    invoke-static {p1, v0, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3200
    iget v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->length:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->length:I

    .line 3201
    return-void
.end method

.method public charAt(I)I
    .locals 2

    .prologue
    .line 3167
    iget v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->length:I

    if-ge p1, v0, :cond_0

    .line 3169
    iget-object v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->buffer:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 3173
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "The index exceeds the valid buffer area"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getByteStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 3120
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->buffer:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xfe

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 3233
    iget-object v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->encoding:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3236
    iget v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->length:I

    if-ge v0, v3, :cond_1

    .line 3239
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->encoding:Ljava/lang/String;

    .line 3307
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->encoding:Ljava/lang/String;

    return-object v0

    .line 3241
    :cond_1
    iget-object v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->buffer:[B

    aget-byte v0, v0, v2

    if-nez v0, :cond_5

    .line 3248
    iget v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->length:I

    if-lt v0, v4, :cond_2

    iget-object v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->buffer:[B

    aget-byte v0, v0, v5

    if-eqz v0, :cond_3

    .line 3250
    :cond_2
    const-string v0, "UTF-16BE"

    iput-object v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->encoding:Ljava/lang/String;

    goto :goto_0

    .line 3252
    :cond_3
    iget-object v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->buffer:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->buffer:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xff

    if-ne v0, v1, :cond_4

    .line 3254
    const-string v0, "UTF-32BE"

    iput-object v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->encoding:Ljava/lang/String;

    goto :goto_0

    .line 3258
    :cond_4
    const-string v0, "UTF-32"

    iput-object v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->encoding:Ljava/lang/String;

    goto :goto_0

    .line 3261
    :cond_5
    iget-object v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->buffer:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x80

    if-ge v0, v1, :cond_9

    .line 3267
    iget-object v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->buffer:[B

    aget-byte v0, v0, v5

    if-eqz v0, :cond_6

    .line 3269
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->encoding:Ljava/lang/String;

    goto :goto_0

    .line 3271
    :cond_6
    iget v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->length:I

    if-lt v0, v4, :cond_7

    iget-object v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->buffer:[B

    aget-byte v0, v0, v3

    if-eqz v0, :cond_8

    .line 3273
    :cond_7
    const-string v0, "UTF-16LE"

    iput-object v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->encoding:Ljava/lang/String;

    goto :goto_0

    .line 3277
    :cond_8
    const-string v0, "UTF-32LE"

    iput-object v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->encoding:Ljava/lang/String;

    goto :goto_0

    .line 3288
    :cond_9
    iget-object v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->buffer:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xef

    if-ne v0, v1, :cond_a

    .line 3290
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->encoding:Ljava/lang/String;

    goto :goto_0

    .line 3292
    :cond_a
    iget-object v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->buffer:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v6, :cond_b

    .line 3294
    const-string v0, "UTF-16"

    iput-object v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->encoding:Ljava/lang/String;

    goto :goto_0

    .line 3296
    :cond_b
    iget v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->length:I

    if-lt v0, v4, :cond_c

    iget-object v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->buffer:[B

    aget-byte v0, v0, v3

    if-eqz v0, :cond_d

    .line 3298
    :cond_c
    const-string v0, "UTF-16"

    iput-object v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->encoding:Ljava/lang/String;

    goto/16 :goto_0

    .line 3302
    :cond_d
    const-string v0, "UTF-32"

    iput-object v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->encoding:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 3130
    iget v0, p0, Lcom/adobe/xmp/impl/ParameterAsserts;->length:I

    return v0
.end method
