.class public final Lcom/google/common/logging/nano/eventprotos$Statistics;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$Statistics;",
        ">;"
    }
.end annotation


# instance fields
.field public max:F

.field public mean:F

.field public min:F

.field public stddev:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5997
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 7002
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$Statistics;->min:F

    .line 7003
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$Statistics;->max:F

    .line 7004
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$Statistics;->mean:F

    .line 7005
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$Statistics;->stddev:F

    .line 7006
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$Statistics;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 7007
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$Statistics;->cachedSize:I

    .line 5999
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6035
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 6036
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$Statistics;->min:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 6037
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 6038
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$Statistics;->min:F

    .line 7569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 6039
    add-int/2addr v0, v1

    .line 6041
    :cond_0
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$Statistics;->max:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 6042
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 6043
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$Statistics;->max:F

    .line 8569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 6044
    add-int/2addr v0, v1

    .line 6046
    :cond_1
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$Statistics;->mean:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 6047
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 6048
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$Statistics;->mean:F

    .line 9569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 6049
    add-int/2addr v0, v1

    .line 6051
    :cond_2
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$Statistics;->stddev:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 6052
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 6053
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$Statistics;->stddev:F

    .line 10569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 6054
    add-int/2addr v0, v1

    .line 6056
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

    .line 6014
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$Statistics;->min:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 6015
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 6016
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$Statistics;->min:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 6018
    :cond_0
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$Statistics;->max:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 6019
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 6020
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$Statistics;->max:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 6022
    :cond_1
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$Statistics;->mean:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 6023
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 6024
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$Statistics;->mean:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 6026
    :cond_2
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$Statistics;->stddev:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 6027
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 6028
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$Statistics;->stddev:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 6030
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6031
    return-void
.end method
