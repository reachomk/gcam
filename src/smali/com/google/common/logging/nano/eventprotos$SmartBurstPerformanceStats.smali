.class public final Lcom/google/common/logging/nano/eventprotos$SmartBurstPerformanceStats;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$SmartBurstPerformanceStats;",
        ">;"
    }
.end annotation


# instance fields
.field public analysisStats:[Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;

.field private imageSaveTimeMs:I

.field private timeToRenderArtifactsMs:I

.field private timeToRenderPreviewArtifactsMs:I

.field private totalFramesSeen:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5725
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6730
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstPerformanceStats;->totalFramesSeen:I

    .line 6731
    invoke-static {}, Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;->emptyArray()[Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstPerformanceStats;->analysisStats:[Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;

    .line 6732
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstPerformanceStats;->imageSaveTimeMs:I

    .line 6733
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstPerformanceStats;->timeToRenderPreviewArtifactsMs:I

    .line 6734
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstPerformanceStats;->timeToRenderArtifactsMs:I

    .line 6735
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstPerformanceStats;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 6736
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstPerformanceStats;->cachedSize:I

    .line 5727
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    .line 5768
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v1

    .line 5773
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstPerformanceStats;->analysisStats:[Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstPerformanceStats;->analysisStats:[Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 5774
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstPerformanceStats;->analysisStats:[Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 5775
    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstPerformanceStats;->analysisStats:[Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;

    aget-object v2, v2, v0

    .line 5776
    if-eqz v2, :cond_0

    .line 5777
    const/4 v3, 0x2

    .line 5778
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 5774
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5794
    :cond_1
    return v1
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5746
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstPerformanceStats;->analysisStats:[Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstPerformanceStats;->analysisStats:[Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 5747
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstPerformanceStats;->analysisStats:[Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 5748
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstPerformanceStats;->analysisStats:[Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;

    aget-object v1, v1, v0

    .line 5749
    if-eqz v1, :cond_0

    .line 5750
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 5747
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5763
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5764
    return-void
.end method
