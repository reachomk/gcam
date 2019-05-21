.class public final Lcom/google/android/libraries/smartburst/utils/FloatArray;
.super Ljava/lang/Object;
.source "FloatArray.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field private mCapacity:I

.field private mSize:I

.field private mValues:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/utils/FloatArray;-><init>(I)V

    .line 33
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mSize:I

    .line 41
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 42
    iput p1, p0, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mCapacity:I

    .line 43
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mValues:[F

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/smartburst/utils/FloatArray;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mSize:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/libraries/smartburst/utils/FloatArray;)[F
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mValues:[F

    return-object v0
.end method

.method public static copyOf(Lcom/google/android/libraries/smartburst/utils/FloatArray;)Lcom/google/android/libraries/smartburst/utils/FloatArray;
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mValues:[F

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/utils/FloatArray;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/libraries/smartburst/utils/FloatArray;->copyOf([FII)Lcom/google/android/libraries/smartburst/utils/FloatArray;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/util/Collection;)Lcom/google/android/libraries/smartburst/utils/FloatArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/google/android/libraries/smartburst/utils/FloatArray;"
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {p0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v1, Lcom/google/android/libraries/smartburst/utils/FloatArray;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/google/android/libraries/smartburst/utils/FloatArray;-><init>(I)V

    .line 103
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 104
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/smartburst/utils/FloatArray;->add(F)V

    goto :goto_0

    .line 106
    :cond_0
    return-object v1
.end method

.method public static copyOf([F)Lcom/google/android/libraries/smartburst/utils/FloatArray;
    .locals 2

    .prologue
    .line 73
    array-length v0, p0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/libraries/smartburst/utils/FloatArray;

    invoke-direct {v0}, Lcom/google/android/libraries/smartburst/utils/FloatArray;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/android/libraries/smartburst/utils/FloatArray;->copyOf([FII)Lcom/google/android/libraries/smartburst/utils/FloatArray;

    move-result-object v0

    goto :goto_0
.end method

.method public static copyOf([FII)Lcom/google/android/libraries/smartburst/utils/FloatArray;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    invoke-static {p0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    if-ltz p1, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 87
    if-ltz p2, :cond_1

    array-length v0, p0

    if-gt p2, v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 88
    new-instance v3, Lcom/google/android/libraries/smartburst/utils/FloatArray;

    if-nez p2, :cond_2

    move v0, v1

    :goto_2
    invoke-direct {v3, v0}, Lcom/google/android/libraries/smartburst/utils/FloatArray;-><init>(I)V

    .line 1263
    iget v0, v3, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mCapacity:I

    if-gt p2, v0, :cond_3

    :goto_3
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 1264
    iput p2, v3, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mSize:I

    .line 90
    iget-object v0, v3, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mValues:[F

    invoke-static {p0, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    return-object v3

    :cond_0
    move v0, v2

    .line 86
    goto :goto_0

    :cond_1
    move v0, v2

    .line 87
    goto :goto_1

    :cond_2
    move v0, p2

    .line 88
    goto :goto_2

    :cond_3
    move v1, v2

    .line 1263
    goto :goto_3
.end method

.method private final validateIndex(I)I
    .locals 4

    .prologue
    .line 248
    iget v0, p0, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mSize:I

    if-lt p1, v0, :cond_0

    .line 249
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    iget v1, p0, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mSize:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x3c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Illegal index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in FloatArray of size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    return p1
.end method

.method public static varargs withValues([F)Lcom/google/android/libraries/smartburst/utils/FloatArray;
    .locals 1

    .prologue
    .line 53
    invoke-static {p0}, Lcom/google/android/libraries/smartburst/utils/FloatArray;->copyOf([F)Lcom/google/android/libraries/smartburst/utils/FloatArray;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final add(F)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 151
    iget v0, p0, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mSize:I

    .line 152
    iget v0, p0, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mSize:I

    iget v1, p0, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mCapacity:I

    if-le v0, v1, :cond_0

    .line 2256
    iget v0, p0, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mCapacity:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mCapacity:I

    .line 2257
    iget v0, p0, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mCapacity:I

    new-array v0, v0, [F

    .line 2258
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mValues:[F

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mValues:[F

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2259
    iput-object v0, p0, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mValues:[F

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mValues:[F

    iget v1, p0, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 156
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 198
    instance-of v0, p1, Lcom/google/android/libraries/smartburst/utils/FloatArray;

    if-eqz v0, :cond_0

    .line 199
    check-cast p1, Lcom/google/android/libraries/smartburst/utils/FloatArray;

    .line 200
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/utils/FloatArray;->toArray()[F

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/utils/FloatArray;->toArray()[F

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    .line 202
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final get(I)F
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mValues:[F

    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/utils/FloatArray;->validateIndex(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/utils/FloatArray;->toArray()[F

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/utils/FloatArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    new-instance v0, Lcom/google/android/libraries/smartburst/utils/FloatArray$1;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/smartburst/utils/FloatArray$1;-><init>(Lcom/google/android/libraries/smartburst/utils/FloatArray;)V

    return-object v0
.end method

.method public final set(IF)V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mValues:[F

    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/utils/FloatArray;->validateIndex(I)I

    move-result v1

    aput p2, v0, v1

    .line 143
    return-void
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mSize:I

    return v0
.end method

.method public final sortInPlace()V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mValues:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mSize:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([FII)V

    .line 163
    return-void
.end method

.method public final subArray(II)Lcom/google/android/libraries/smartburst/utils/FloatArray;
    .locals 3

    .prologue
    .line 191
    if-lt p2, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 192
    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/utils/FloatArray;->validateIndex(I)I

    .line 193
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mValues:[F

    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/utils/FloatArray;->validateIndex(I)I

    move-result v1

    sub-int v2, p2, p1

    invoke-static {v0, v1, v2}, Lcom/google/android/libraries/smartburst/utils/FloatArray;->copyOf([FII)Lcom/google/android/libraries/smartburst/utils/FloatArray;

    move-result-object v0

    return-object v0

    .line 191
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toArray()[F
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 174
    iget v0, p0, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mSize:I

    iget v1, p0, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mCapacity:I

    if-ne v0, v1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mValues:[F

    .line 179
    :goto_0
    return-object v0

    .line 177
    :cond_0
    iget v0, p0, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mSize:I

    new-array v0, v0, [F

    .line 178
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mValues:[F

    iget v2, p0, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 212
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 213
    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 214
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mSize:I

    if-ge v0, v2, :cond_1

    .line 215
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mValues:[F

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 216
    iget v2, p0, Lcom/google/android/libraries/smartburst/utils/FloatArray;->mSize:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 217
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 214
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_1
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 221
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
