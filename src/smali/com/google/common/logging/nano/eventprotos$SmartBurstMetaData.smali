.class public final Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;",
        ">;"
    }
.end annotation


# instance fields
.field public captureStats:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureStats;

.field public duration:F

.field public generatedArtifacts:[Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;

.field public performanceStats:Lcom/google/common/logging/nano/eventprotos$SmartBurstPerformanceStats;

.field public summary:Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;

.field public summaryFrameCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4975
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5980
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->duration:F

    .line 5981
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->summaryFrameCount:I

    .line 5982
    iput-object v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->summary:Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;

    .line 5983
    invoke-static {}, Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;->emptyArray()[Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->generatedArtifacts:[Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;

    .line 5984
    iput-object v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->captureStats:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureStats;

    .line 5985
    iput-object v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->performanceStats:Lcom/google/common/logging/nano/eventprotos$SmartBurstPerformanceStats;

    .line 5986
    iput-object v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 5987
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->cachedSize:I

    .line 4977
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    .prologue
    .line 5023
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 5024
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->duration:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    const/4 v2, 0x0

    .line 5025
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 5026
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->duration:F

    .line 6569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 5027
    add-int/2addr v0, v1

    .line 5029
    :cond_0
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->summaryFrameCount:I

    if-eqz v1, :cond_1

    .line 5030
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->summaryFrameCount:I

    .line 5031
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5033
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->summary:Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;

    if-eqz v1, :cond_2

    .line 5034
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->summary:Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;

    .line 5035
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5037
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->generatedArtifacts:[Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->generatedArtifacts:[Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 5038
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->generatedArtifacts:[Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 5039
    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->generatedArtifacts:[Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;

    aget-object v2, v2, v0

    .line 5040
    if-eqz v2, :cond_3

    .line 5041
    const/4 v3, 0x4

    .line 5042
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 5038
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 5046
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->captureStats:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureStats;

    if-eqz v1, :cond_6

    .line 5047
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->captureStats:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureStats;

    .line 5048
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5050
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->performanceStats:Lcom/google/common/logging/nano/eventprotos$SmartBurstPerformanceStats;

    if-eqz v1, :cond_7

    .line 5051
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->performanceStats:Lcom/google/common/logging/nano/eventprotos$SmartBurstPerformanceStats;

    .line 5052
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5054
    :cond_7
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
    .line 4994
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->duration:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v1, 0x0

    .line 4995
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 4996
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->duration:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4998
    :cond_0
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->summaryFrameCount:I

    if-eqz v0, :cond_1

    .line 4999
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->summaryFrameCount:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5001
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->summary:Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;

    if-eqz v0, :cond_2

    .line 5002
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->summary:Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 5004
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->generatedArtifacts:[Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->generatedArtifacts:[Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 5005
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->generatedArtifacts:[Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 5006
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->generatedArtifacts:[Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;

    aget-object v1, v1, v0

    .line 5007
    if-eqz v1, :cond_3

    .line 5008
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 5005
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5012
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->captureStats:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureStats;

    if-eqz v0, :cond_5

    .line 5013
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->captureStats:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureStats;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 5015
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->performanceStats:Lcom/google/common/logging/nano/eventprotos$SmartBurstPerformanceStats;

    if-eqz v0, :cond_6

    .line 5016
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->performanceStats:Lcom/google/common/logging/nano/eventprotos$SmartBurstPerformanceStats;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 5018
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5019
    return-void
.end method
