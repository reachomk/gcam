.class public final Lcom/google/protobuf/nano/FieldArray;
.super Ljava/lang/Object;
.source "FieldArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DELETED:Lcom/google/protobuf/nano/FieldData;


# instance fields
.field private mData:[Lcom/google/protobuf/nano/FieldData;

.field private mFieldNumbers:[I

.field private mGarbage:Z

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/google/protobuf/nano/FieldData;

    invoke-direct {v0}, Lcom/google/protobuf/nano/FieldData;-><init>()V

    sput-object v0, Lcom/google/protobuf/nano/FieldArray;->DELETED:Lcom/google/protobuf/nano/FieldData;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/FieldArray;-><init>(I)V

    .line 56
    return-void
.end method

.method private constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v2, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    .line 1244
    shl-int/lit8 v0, p1, 0x2

    invoke-static {v0}, Lcom/google/protobuf/nano/FieldArray;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 65
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    .line 66
    new-array v0, v0, [Lcom/google/protobuf/nano/FieldData;

    iput-object v0, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    .line 67
    iput v2, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    .line 68
    return-void
.end method

.method private static idealByteArraySize(I)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 248
    const/4 v0, 0x4

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 249
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_1

    .line 250
    shl-int v0, v2, v0

    add-int/lit8 p0, v0, -0xc

    .line 252
    :cond_0
    return p0

    .line 248
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final clone()Lcom/google/protobuf/nano/FieldArray;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 295
    .line 4193
    iget v1, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    .line 296
    new-instance v2, Lcom/google/protobuf/nano/FieldArray;

    invoke-direct {v2, v1}, Lcom/google/protobuf/nano/FieldArray;-><init>(I)V

    .line 297
    iget-object v3, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget-object v4, v2, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    invoke-static {v3, v0, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    :goto_0
    if-ge v0, v1, :cond_1

    .line 299
    iget-object v3, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 300
    iget-object v3, v2, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/google/protobuf/nano/FieldData;->clone()Lcom/google/protobuf/nano/FieldData;

    move-result-object v4

    aput-object v4, v3, v0

    .line 298
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    :cond_1
    iput v1, v2, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    .line 304
    return-object v2
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/protobuf/nano/FieldArray;->clone()Lcom/google/protobuf/nano/FieldArray;

    move-result-object v0

    return-object v0
.end method

.method final dataAt(I)Lcom/google/protobuf/nano/FieldData;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 215
    if-ne p1, p0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v0

    .line 218
    :cond_1
    instance-of v2, p1, Lcom/google/protobuf/nano/FieldArray;

    if-nez v2, :cond_2

    move v0, v1

    .line 219
    goto :goto_0

    .line 222
    :cond_2
    check-cast p1, Lcom/google/protobuf/nano/FieldArray;

    .line 2193
    iget v2, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    .line 3193
    iget v3, p1, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    .line 223
    if-eq v2, v3, :cond_3

    move v0, v1

    .line 224
    goto :goto_0

    .line 226
    :cond_3
    iget-object v3, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget-object v4, p1, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget v5, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    move v2, v1

    .line 3275
    :goto_1
    if-ge v2, v5, :cond_6

    .line 3276
    aget v6, v3, v2

    aget v7, v4, v2

    if-eq v6, v7, :cond_5

    move v2, v1

    .line 226
    :goto_2
    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    iget-object v4, p1, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    iget v5, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    move v2, v1

    .line 3284
    :goto_3
    if-ge v2, v5, :cond_8

    .line 3285
    aget-object v6, v3, v2

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Lcom/google/protobuf/nano/FieldData;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    move v2, v1

    .line 227
    :goto_4
    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    .line 226
    goto :goto_0

    .line 3275
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    move v2, v0

    .line 3280
    goto :goto_2

    .line 3284
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    move v2, v0

    .line 3289
    goto :goto_4
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 235
    const/16 v1, 0x11

    .line 236
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    if-ge v0, v2, :cond_0

    .line 237
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    .line 238
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldData;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_0
    return v1
.end method

.method final size()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    return v0
.end method
