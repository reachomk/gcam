.class public final Lcom/google/common/logging/nano/eventprotos$AuthorStats;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$AuthorStats;",
        ">;"
    }
.end annotation


# instance fields
.field public googleCameraItems:I

.field public searchDays:F

.field public searchItems:I

.field public totalItems:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 6137
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 7142
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$AuthorStats;->searchDays:F

    .line 7143
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$AuthorStats;->searchItems:I

    .line 7144
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$AuthorStats;->googleCameraItems:I

    .line 7145
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$AuthorStats;->totalItems:F

    .line 7146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$AuthorStats;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 7147
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$AuthorStats;->cachedSize:I

    .line 6139
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6173
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 6174
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$AuthorStats;->searchDays:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 6175
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 6176
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$AuthorStats;->searchDays:F

    .line 7569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 6177
    add-int/2addr v0, v1

    .line 6179
    :cond_0
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$AuthorStats;->searchItems:I

    if-eqz v1, :cond_1

    .line 6180
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$AuthorStats;->searchItems:I

    .line 6181
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6183
    :cond_1
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$AuthorStats;->googleCameraItems:I

    if-eqz v1, :cond_2

    .line 6184
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$AuthorStats;->googleCameraItems:I

    .line 6185
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6187
    :cond_2
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$AuthorStats;->totalItems:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 6188
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 6189
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$AuthorStats;->totalItems:F

    .line 8569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 6190
    add-int/2addr v0, v1

    .line 6192
    :cond_3
    return v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 6154
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$AuthorStats;->searchDays:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 6155
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 6156
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$AuthorStats;->searchDays:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 6158
    :cond_0
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$AuthorStats;->searchItems:I

    if-eqz v0, :cond_1

    .line 6159
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$AuthorStats;->searchItems:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6161
    :cond_1
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$AuthorStats;->googleCameraItems:I

    if-eqz v0, :cond_2

    .line 6162
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$AuthorStats;->googleCameraItems:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6164
    :cond_2
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$AuthorStats;->totalItems:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 6165
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 6166
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$AuthorStats;->totalItems:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 6168
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6169
    return-void
.end method
