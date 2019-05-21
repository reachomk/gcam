.class public Lcom/google/common/primitives/Ints;
.super Ljava/lang/Object;
.source "Ints.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/CaptureThreshold;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Ints$IntArrayAsList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/one/v2/photo/CaptureThreshold;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2019
    return-void
.end method

.method static synthetic access$000([IIII)I
    .locals 1

    .prologue
    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Ints;->indexOf([IIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([IIII)I
    .locals 1

    .prologue
    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Ints;->lastIndexOf([IIII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 486
    array-length v0, p0

    if-nez v0, :cond_0

    .line 487
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 489
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Ints$IntArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;-><init>([I)V

    goto :goto_0
.end method

.method private static indexOf([IIII)I
    .locals 2

    .prologue
    .line 160
    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_1

    .line 161
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 165
    :goto_1
    return v0

    .line 160
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static lastIndexOf([IIII)I
    .locals 2

    .prologue
    .line 212
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_1

    .line 213
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 217
    :goto_1
    return v0

    .line 212
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 217
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static saturatedCast(J)I
    .locals 2

    .prologue
    .line 104
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 105
    const v0, 0x7fffffff

    .line 110
    :goto_0
    return v0

    .line 107
    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 108
    const/high16 v0, -0x80000000

    goto :goto_0

    .line 110
    :cond_1
    long-to-int v0, p0

    goto :goto_0
.end method

.method public static toArray(Ljava/util/Collection;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)[I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 459
    instance-of v0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;

    if-eqz v0, :cond_0

    .line 460
    check-cast p0, Lcom/google/common/primitives/Ints$IntArrayAsList;

    .line 1616
    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v1

    .line 1617
    new-array v0, v1, [I

    .line 1618
    iget-object v3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v4, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    invoke-static {v3, v4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 470
    :goto_0
    return-object v0

    .line 463
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 464
    array-length v4, v3

    .line 465
    new-array v1, v4, [I

    .line 466
    :goto_1
    if-ge v2, v4, :cond_1

    .line 468
    aget-object v0, v3, v2

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    aput v0, v1, v2

    .line 466
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 470
    goto :goto_0
.end method


# virtual methods
.method public tryReserveImagesForCapture(J)J
    .locals 2

    .prologue
    .line 2026
    const-wide/16 v0, -0x1

    return-wide v0
.end method
