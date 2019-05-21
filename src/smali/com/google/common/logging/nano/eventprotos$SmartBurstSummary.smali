.class public final Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;",
        ">;"
    }
.end annotation


# instance fields
.field public maxFrameCount:I

.field public presentedFrameCount:I

.field public totalFrameCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5314
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6319
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;->maxFrameCount:I

    .line 6320
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;->totalFrameCount:I

    .line 6321
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;->presentedFrameCount:I

    .line 6322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 6323
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;->cachedSize:I

    .line 5316
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 5344
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 5345
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;->maxFrameCount:I

    if-eqz v1, :cond_0

    .line 5346
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;->maxFrameCount:I

    .line 5347
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5349
    :cond_0
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;->totalFrameCount:I

    if-eqz v1, :cond_1

    .line 5350
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;->totalFrameCount:I

    .line 5351
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5353
    :cond_1
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;->presentedFrameCount:I

    if-eqz v1, :cond_2

    .line 5354
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;->presentedFrameCount:I

    .line 5355
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5357
    :cond_2
    return v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5330
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;->maxFrameCount:I

    if-eqz v0, :cond_0

    .line 5331
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;->maxFrameCount:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5333
    :cond_0
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;->totalFrameCount:I

    if-eqz v0, :cond_1

    .line 5334
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;->totalFrameCount:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5336
    :cond_1
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;->presentedFrameCount:I

    if-eqz v0, :cond_2

    .line 5337
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;->presentedFrameCount:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5339
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5340
    return-void
.end method
