.class public final Lcom/google/common/logging/nano/eventprotos$CaptureTiming;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$CaptureTiming;",
        ">;"
    }
.end annotation


# instance fields
.field public captureFrameSelectEndNs:J

.field public captureFrameSelectStartNs:J

.field public captureMediumThumbNs:J

.field private captureMergeEndNs:J

.field private captureMergeStartNs:J

.field public capturePersistedEndNs:J

.field private capturePersistedStartNs:J

.field public captureProcessingEndNs:J

.field public captureProcessingStartNs:J

.field private captureRequestReceivedNs:J

.field private captureRequestSubmittedNs:J

.field public captureScoreCalculations:[Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;

.field public captureStartNs:J

.field public captureTinyThumbNs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 8829
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 9834
    iput-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureStartNs:J

    .line 9835
    iput-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureTinyThumbNs:J

    .line 9836
    iput-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureMediumThumbNs:J

    .line 9837
    iput-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureRequestSubmittedNs:J

    .line 9838
    iput-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureRequestReceivedNs:J

    .line 9839
    iput-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureFrameSelectStartNs:J

    .line 9840
    iput-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureFrameSelectEndNs:J

    .line 9841
    iput-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureMergeStartNs:J

    .line 9842
    iput-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureMergeEndNs:J

    .line 9843
    iput-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureProcessingStartNs:J

    .line 9844
    iput-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureProcessingEndNs:J

    .line 9845
    iput-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->capturePersistedStartNs:J

    .line 9846
    iput-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->capturePersistedEndNs:J

    .line 9847
    invoke-static {}, Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;->emptyArray()[Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureScoreCalculations:[Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;

    .line 9848
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 9849
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->cachedSize:I

    .line 8831
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 8908
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 8909
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureStartNs:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 8910
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureStartNs:J

    .line 8911
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8913
    :cond_0
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureTinyThumbNs:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 8914
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureTinyThumbNs:J

    .line 8915
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8917
    :cond_1
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureMediumThumbNs:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 8918
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureMediumThumbNs:J

    .line 8919
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8921
    :cond_2
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureProcessingStartNs:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 8922
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureProcessingStartNs:J

    .line 8923
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8925
    :cond_3
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureProcessingEndNs:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 8926
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureProcessingEndNs:J

    .line 8927
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8929
    :cond_4
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->capturePersistedEndNs:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    .line 8930
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->capturePersistedEndNs:J

    .line 8931
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8933
    :cond_5
    cmp-long v1, v4, v4

    if-eqz v1, :cond_6

    .line 8934
    const/4 v1, 0x7

    .line 8935
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8937
    :cond_6
    cmp-long v1, v4, v4

    if-eqz v1, :cond_7

    .line 8938
    const/16 v1, 0x8

    .line 8939
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8941
    :cond_7
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureFrameSelectStartNs:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_8

    .line 8942
    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureFrameSelectStartNs:J

    .line 8943
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8945
    :cond_8
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureFrameSelectEndNs:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_9

    .line 8946
    const/16 v1, 0xa

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureFrameSelectEndNs:J

    .line 8947
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8949
    :cond_9
    cmp-long v1, v4, v4

    if-eqz v1, :cond_a

    .line 8950
    const/16 v1, 0xb

    .line 8951
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8953
    :cond_a
    cmp-long v1, v4, v4

    if-eqz v1, :cond_b

    .line 8954
    const/16 v1, 0xc

    .line 8955
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8957
    :cond_b
    cmp-long v1, v4, v4

    if-eqz v1, :cond_c

    .line 8958
    const/16 v1, 0xd

    .line 8959
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8961
    :cond_c
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureScoreCalculations:[Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureScoreCalculations:[Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;

    array-length v1, v1

    if-lez v1, :cond_f

    .line 8962
    const/4 v1, 0x0

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureScoreCalculations:[Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;

    array-length v2, v2

    if-ge v0, v2, :cond_e

    .line 8963
    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureScoreCalculations:[Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;

    aget-object v2, v2, v0

    .line 8964
    if-eqz v2, :cond_d

    .line 8965
    const/16 v3, 0xe

    .line 8966
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 8962
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_e
    move v0, v1

    .line 8970
    :cond_f
    return v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 8856
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureStartNs:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 8857
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureStartNs:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8859
    :cond_0
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureTinyThumbNs:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 8860
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureTinyThumbNs:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8862
    :cond_1
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureMediumThumbNs:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 8863
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureMediumThumbNs:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8865
    :cond_2
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureProcessingStartNs:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 8866
    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureProcessingStartNs:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8868
    :cond_3
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureProcessingEndNs:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    .line 8869
    const/4 v0, 0x5

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureProcessingEndNs:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8871
    :cond_4
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->capturePersistedEndNs:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    .line 8872
    const/4 v0, 0x6

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->capturePersistedEndNs:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8874
    :cond_5
    cmp-long v0, v4, v4

    if-eqz v0, :cond_6

    .line 8875
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8877
    :cond_6
    cmp-long v0, v4, v4

    if-eqz v0, :cond_7

    .line 8878
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8880
    :cond_7
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureFrameSelectStartNs:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_8

    .line 8881
    const/16 v0, 0x9

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureFrameSelectStartNs:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8883
    :cond_8
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureFrameSelectEndNs:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_9

    .line 8884
    const/16 v0, 0xa

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureFrameSelectEndNs:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8886
    :cond_9
    cmp-long v0, v4, v4

    if-eqz v0, :cond_a

    .line 8887
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8889
    :cond_a
    cmp-long v0, v4, v4

    if-eqz v0, :cond_b

    .line 8890
    const/16 v0, 0xc

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8892
    :cond_b
    cmp-long v0, v4, v4

    if-eqz v0, :cond_c

    .line 8893
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8895
    :cond_c
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureScoreCalculations:[Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureScoreCalculations:[Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;

    array-length v0, v0

    if-lez v0, :cond_e

    .line 8896
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureScoreCalculations:[Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 8897
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTiming;->captureScoreCalculations:[Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;

    aget-object v1, v1, v0

    .line 8898
    if-eqz v1, :cond_d

    .line 8899
    const/16 v2, 0xe

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8896
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8903
    :cond_e
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 8904
    return-void
.end method
