.class public final Lcom/google/common/logging/nano/eventprotos$LaunchReport;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$LaunchReport;",
        ">;"
    }
.end annotation


# instance fields
.field public cameraActivityInitializedNanoTime:J

.field public controlNanoTime:J

.field public previewFrameNanoTime:J

.field public shutterButtonFirstDrawNanoTime:J

.field public shutterButtonFirstEnabledNanoTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 6600
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 7605
    iput-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$LaunchReport;->controlNanoTime:J

    .line 7606
    iput-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$LaunchReport;->previewFrameNanoTime:J

    .line 7607
    iput-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$LaunchReport;->cameraActivityInitializedNanoTime:J

    .line 7608
    iput-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$LaunchReport;->shutterButtonFirstDrawNanoTime:J

    .line 7609
    iput-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$LaunchReport;->shutterButtonFirstEnabledNanoTime:J

    .line 7610
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$LaunchReport;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 7611
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$LaunchReport;->cachedSize:I

    .line 6602
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 6638
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 6639
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$LaunchReport;->controlNanoTime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 6640
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$LaunchReport;->controlNanoTime:J

    .line 6641
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6643
    :cond_0
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$LaunchReport;->previewFrameNanoTime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 6644
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$LaunchReport;->previewFrameNanoTime:J

    .line 6645
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6647
    :cond_1
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$LaunchReport;->cameraActivityInitializedNanoTime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 6648
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$LaunchReport;->cameraActivityInitializedNanoTime:J

    .line 6649
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6651
    :cond_2
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$LaunchReport;->shutterButtonFirstDrawNanoTime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 6652
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$LaunchReport;->shutterButtonFirstDrawNanoTime:J

    .line 6653
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6655
    :cond_3
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$LaunchReport;->shutterButtonFirstEnabledNanoTime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 6656
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$LaunchReport;->shutterButtonFirstEnabledNanoTime:J

    .line 6657
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6659
    :cond_4
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

    .line 6618
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$LaunchReport;->controlNanoTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 6619
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$LaunchReport;->controlNanoTime:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 6621
    :cond_0
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$LaunchReport;->previewFrameNanoTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 6622
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$LaunchReport;->previewFrameNanoTime:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 6624
    :cond_1
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$LaunchReport;->cameraActivityInitializedNanoTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 6625
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$LaunchReport;->cameraActivityInitializedNanoTime:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 6627
    :cond_2
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$LaunchReport;->shutterButtonFirstDrawNanoTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 6628
    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$LaunchReport;->shutterButtonFirstDrawNanoTime:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 6630
    :cond_3
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$LaunchReport;->shutterButtonFirstEnabledNanoTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    .line 6631
    const/4 v0, 0x5

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$LaunchReport;->shutterButtonFirstEnabledNanoTime:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 6633
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6634
    return-void
.end method
