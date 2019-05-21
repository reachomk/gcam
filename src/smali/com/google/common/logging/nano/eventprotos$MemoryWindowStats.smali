.class public final Lcom/google/common/logging/nano/eventprotos$MemoryWindowStats;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$MemoryWindowStats;",
        ">;"
    }
.end annotation


# virtual methods
.method protected final computeSerializedSize()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    .line 559
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 564
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 565
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 566
    const/4 v1, 0x2

    .line 1569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 567
    add-int/2addr v0, v1

    .line 569
    :cond_0
    cmp-long v1, v4, v4

    if-eqz v1, :cond_1

    .line 570
    const/4 v1, 0x3

    .line 571
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 573
    :cond_1
    cmp-long v1, v4, v4

    if-eqz v1, :cond_2

    .line 574
    const/4 v1, 0x4

    .line 575
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 587
    :cond_2
    return v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 539
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 540
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 541
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 543
    :cond_0
    cmp-long v0, v2, v2

    if-eqz v0, :cond_1

    .line 544
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 546
    :cond_1
    cmp-long v0, v2, v2

    if-eqz v0, :cond_2

    .line 547
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 554
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 555
    return-void
.end method
