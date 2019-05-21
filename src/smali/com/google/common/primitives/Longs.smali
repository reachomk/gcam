.class public final Lcom/google/common/primitives/Longs;
.super Ljava/lang/Object;
.source "Longs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Longs$LongArrayAsList;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2307
    const/16 v1, 0x80

    new-array v2, v1, [B

    .line 2308
    const/4 v1, -0x1

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([BB)V

    move v1, v0

    .line 2309
    :goto_0
    const/16 v3, 0x9

    if-gt v1, v3, :cond_0

    .line 2310
    add-int/lit8 v3, v1, 0x30

    int-to-byte v4, v1

    aput-byte v4, v2, v3

    .line 2309
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2312
    :cond_0
    :goto_1
    const/16 v1, 0x1a

    if-gt v0, v1, :cond_1

    .line 2313
    add-int/lit8 v1, v0, 0x41

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 2314
    add-int/lit8 v1, v0, 0x61

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 2312
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 304
    :cond_1
    return-void
.end method

.method static synthetic access$000([JJII)I
    .locals 1

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->indexOf([JJII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([JJII)I
    .locals 1

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->lastIndexOf([JJII)I

    move-result v0

    return v0
.end method

.method public static hashCode(J)I
    .locals 2

    .prologue
    .line 78
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method private static indexOf([JJII)I
    .locals 5

    .prologue
    .line 128
    move v0, p3

    :goto_0
    if-ge v0, p4, :cond_1

    .line 129
    aget-wide v2, p0, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 133
    :goto_1
    return v0

    .line 128
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static lastIndexOf([JJII)I
    .locals 5

    .prologue
    .line 180
    add-int/lit8 v0, p4, -0x1

    :goto_0
    if-lt v0, p3, :cond_1

    .line 181
    aget-wide v2, p0, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 185
    :goto_1
    return v0

    .line 180
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 185
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static toArray(Ljava/util/Collection;)[J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)[J"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 545
    instance-of v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;

    if-eqz v0, :cond_0

    .line 546
    check-cast p0, Lcom/google/common/primitives/Longs$LongArrayAsList;

    .line 1702
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v1

    .line 1703
    new-array v0, v1, [J

    .line 1704
    iget-object v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v4, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    invoke-static {v3, v4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 556
    :goto_0
    return-object v0

    .line 549
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 550
    array-length v4, v3

    .line 551
    new-array v1, v4, [J

    .line 552
    :goto_1
    if-ge v2, v4, :cond_1

    .line 554
    aget-object v0, v3, v2

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    aput-wide v6, v1, v2

    .line 552
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 556
    goto :goto_0
.end method
