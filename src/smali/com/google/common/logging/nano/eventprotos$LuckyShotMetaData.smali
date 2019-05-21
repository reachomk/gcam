.class public final Lcom/google/common/logging/nano/eventprotos$LuckyShotMetaData;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$LuckyShotMetaData;",
        ">;"
    }
.end annotation


# instance fields
.field public analyzedFrames:[Lcom/google/common/logging/nano/eventprotos$LuckyShotFrameInfo;

.field public scoringMetricType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4634
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5639
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$LuckyShotMetaData;->scoringMetricType:I

    .line 5640
    invoke-static {}, Lcom/google/common/logging/nano/eventprotos$LuckyShotFrameInfo;->emptyArray()[Lcom/google/common/logging/nano/eventprotos$LuckyShotFrameInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$LuckyShotMetaData;->analyzedFrames:[Lcom/google/common/logging/nano/eventprotos$LuckyShotFrameInfo;

    .line 5641
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$LuckyShotMetaData;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 5642
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$LuckyShotMetaData;->cachedSize:I

    .line 4636
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    .prologue
    .line 4665
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4666
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$LuckyShotMetaData;->scoringMetricType:I

    if-eqz v1, :cond_0

    .line 4667
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$LuckyShotMetaData;->scoringMetricType:I

    .line 4668
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4670
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$LuckyShotMetaData;->analyzedFrames:[Lcom/google/common/logging/nano/eventprotos$LuckyShotFrameInfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$LuckyShotMetaData;->analyzedFrames:[Lcom/google/common/logging/nano/eventprotos$LuckyShotFrameInfo;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 4671
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$LuckyShotMetaData;->analyzedFrames:[Lcom/google/common/logging/nano/eventprotos$LuckyShotFrameInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 4672
    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$LuckyShotMetaData;->analyzedFrames:[Lcom/google/common/logging/nano/eventprotos$LuckyShotFrameInfo;

    aget-object v2, v2, v0

    .line 4673
    if-eqz v2, :cond_1

    .line 4674
    const/4 v3, 0x2

    .line 4675
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 4671
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 4679
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
    .line 4649
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$LuckyShotMetaData;->scoringMetricType:I

    if-eqz v0, :cond_0

    .line 4650
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$LuckyShotMetaData;->scoringMetricType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4652
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$LuckyShotMetaData;->analyzedFrames:[Lcom/google/common/logging/nano/eventprotos$LuckyShotFrameInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$LuckyShotMetaData;->analyzedFrames:[Lcom/google/common/logging/nano/eventprotos$LuckyShotFrameInfo;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 4653
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$LuckyShotMetaData;->analyzedFrames:[Lcom/google/common/logging/nano/eventprotos$LuckyShotFrameInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 4654
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$LuckyShotMetaData;->analyzedFrames:[Lcom/google/common/logging/nano/eventprotos$LuckyShotFrameInfo;

    aget-object v1, v1, v0

    .line 4655
    if-eqz v1, :cond_1

    .line 4656
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 4653
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4660
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4661
    return-void
.end method
