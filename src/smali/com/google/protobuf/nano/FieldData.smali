.class final Lcom/google/protobuf/nano/FieldData;
.super Ljava/lang/Object;
.source "FieldData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private cachedExtension:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<**>;"
        }
    .end annotation
.end field

.field private unknownFieldData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/nano/UnknownFieldData;",
            ">;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    .line 55
    return-void
.end method

.method private final toByteArray()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/protobuf/nano/FieldData;->computeSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    .line 185
    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v1

    .line 186
    invoke-virtual {p0, v1}, Lcom/google/protobuf/nano/FieldData;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 187
    return-object v0
.end method


# virtual methods
.method public final clone()Lcom/google/protobuf/nano/FieldData;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 192
    new-instance v3, Lcom/google/protobuf/nano/FieldData;

    invoke-direct {v3}, Lcom/google/protobuf/nano/FieldData;-><init>()V

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    iput-object v0, v3, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    .line 195
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_1

    .line 196
    const/4 v0, 0x0

    iput-object v0, v3, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    .line 204
    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/protobuf/nano/MessageNano;

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {v0}, Lcom/google/protobuf/nano/MessageNano;->clone()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    iput-object v0, v3, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    .line 235
    :cond_0
    :goto_1
    return-object v3

    .line 198
    :cond_1
    iget-object v0, v3, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 208
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_3

    .line 209
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_1

    .line 210
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v0, v0, [[B

    if-eqz v0, :cond_4

    .line 211
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v0, [[B

    .line 212
    array-length v2, v0

    new-array v4, v2, [[B

    .line 213
    iput-object v4, v3, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    move v2, v1

    .line 214
    :goto_2
    array-length v1, v0

    if-ge v2, v1, :cond_0

    .line 215
    aget-object v1, v0, v2

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    aput-object v1, v4, v2

    .line 214
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 217
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v0, v0, [Z

    if-eqz v0, :cond_5

    .line 218
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v0, [Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_1

    .line 219
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-eqz v0, :cond_6

    .line 220
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v0, [I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_1

    .line 221
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_7

    .line 222
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v0, [J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_1

    .line 223
    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v0, v0, [F

    if-eqz v0, :cond_8

    .line 224
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v0, [F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto/16 :goto_1

    .line 225
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v0, v0, [D

    if-eqz v0, :cond_9

    .line 226
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v0, [D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto/16 :goto_1

    .line 227
    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v0, v0, [Lcom/google/protobuf/nano/MessageNano;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v0, [Lcom/google/protobuf/nano/MessageNano;

    .line 229
    array-length v2, v0

    new-array v2, v2, [Lcom/google/protobuf/nano/MessageNano;

    .line 230
    iput-object v2, v3, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    .line 231
    :goto_3
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 232
    aget-object v4, v0, v1

    invoke-virtual {v4}, Lcom/google/protobuf/nano/MessageNano;->clone()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v4

    aput-object v4, v2, v1
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/protobuf/nano/FieldData;->clone()Lcom/google/protobuf/nano/FieldData;

    move-result-object v0

    return-object v0
.end method

.method final computeSerializedSize()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 99
    .line 100
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 101
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    iget-object v3, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    .line 1323
    iget-boolean v1, v2, Lcom/google/protobuf/nano/Extension;->repeated:Z

    if-eqz v1, :cond_1

    .line 1333
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    move v1, v0

    .line 1334
    :goto_0
    if-ge v1, v4, :cond_2

    .line 1335
    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    .line 1336
    if-eqz v5, :cond_0

    .line 1337
    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/protobuf/nano/Extension;->computeSingularSerializedSize(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v0, v5

    .line 1334
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1326
    :cond_1
    invoke-virtual {v2, v3}, Lcom/google/protobuf/nano/Extension;->computeSingularSerializedSize(Ljava/lang/Object;)I

    move-result v0

    .line 107
    :cond_2
    :goto_1
    return v0

    .line 103
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/UnknownFieldData;

    .line 2058
    iget v3, v0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    .line 2059
    iget-object v0, v0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    array-length v0, v0

    add-int/2addr v0, v3

    .line 104
    add-int/2addr v0, v1

    move v1, v0

    .line 105
    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 122
    if-ne p1, p0, :cond_1

    .line 123
    const/4 v0, 0x1

    .line 163
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    instance-of v1, p1, Lcom/google/protobuf/nano/FieldData;

    if-eqz v1, :cond_0

    .line 129
    check-cast p1, Lcom/google/protobuf/nano/FieldData;

    .line 130
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v1, :cond_9

    iget-object v1, p1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v1, :cond_9

    .line 134
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    iget-object v2, p1, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    if-ne v1, v2, :cond_0

    .line 137
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    iget-object v0, v0, Lcom/google/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_3

    .line 142
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v1, p1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0

    .line 143
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-eqz v0, :cond_4

    .line 144
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v0, [I

    iget-object v1, p1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto :goto_0

    .line 145
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_5

    .line 146
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v0, [J

    iget-object v1, p1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [J

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    goto :goto_0

    .line 147
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v0, v0, [F

    if-eqz v0, :cond_6

    .line 148
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v0, [F

    iget-object v1, p1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    goto :goto_0

    .line 149
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v0, v0, [D

    if-eqz v0, :cond_7

    .line 150
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v0, [D

    iget-object v1, p1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [D

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    goto/16 :goto_0

    .line 151
    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v0, v0, [Z

    if-eqz v0, :cond_8

    .line 152
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v0, [Z

    iget-object v1, p1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    goto/16 :goto_0

    .line 154
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0

    .line 157
    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 159
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    iget-object v1, p1, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0

    .line 163
    :cond_a
    :try_start_0
    invoke-direct {p0}, Lcom/google/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object v0

    invoke-direct {p1}, Lcom/google/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto/16 :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 166
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 175
    :try_start_0
    invoke-direct {p0}, Lcom/google/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 180
    return v0

    .line 176
    :catch_0
    move-exception v0

    .line 178
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 112
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    .line 2279
    iget-boolean v0, v1, Lcom/google/protobuf/nano/Extension;->repeated:Z

    if-eqz v0, :cond_1

    .line 2313
    invoke-static {v2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    .line 2314
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 2315
    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    .line 2316
    if-eqz v4, :cond_0

    .line 2317
    invoke-virtual {v1, v4, p1}, Lcom/google/protobuf/nano/Extension;->writeSingularData(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2314
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2282
    :cond_1
    invoke-virtual {v1, v2, p1}, Lcom/google/protobuf/nano/Extension;->writeSingularData(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 118
    :cond_2
    return-void

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/UnknownFieldData;

    .line 3064
    iget v2, v0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 3065
    iget-object v0, v0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([B)V

    goto :goto_1
.end method
