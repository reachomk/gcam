.class public final Lcom/google/common/logging/nano/eventprotos$FrameInfo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$FrameInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;


# instance fields
.field public frameNumber:J

.field public observedDurationUs:I

.field public previousDurationUs:I

.field public sensorExposureDurationUs:I

.field public sensorFrameDurationUs:I

.field public timeNs:J

.field public timeSensorNs:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 9661
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 10666
    iput-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->timeNs:J

    .line 10667
    iput-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->timeSensorNs:J

    .line 10668
    iput-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->frameNumber:J

    .line 10669
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->sensorFrameDurationUs:I

    .line 10670
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->sensorExposureDurationUs:I

    .line 10671
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->previousDurationUs:I

    .line 10672
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->observedDurationUs:I

    .line 10673
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 10674
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->cachedSize:I

    .line 9663
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/eventprotos$FrameInfo;
    .locals 2

    .prologue
    .line 9627
    sget-object v0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->_emptyArray:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    if-nez v0, :cond_1

    .line 9628
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 9630
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->_emptyArray:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    if-nez v0, :cond_0

    .line 9631
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    sput-object v0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->_emptyArray:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    .line 9633
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9635
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->_emptyArray:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    return-object v0

    .line 9633
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 9707
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 9708
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->timeNs:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 9709
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->timeNs:J

    .line 9710
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9712
    :cond_0
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->timeSensorNs:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 9713
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->timeSensorNs:J

    .line 9714
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9716
    :cond_1
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->frameNumber:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 9717
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->frameNumber:J

    .line 9718
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9720
    :cond_2
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->sensorFrameDurationUs:I

    if-eqz v1, :cond_3

    .line 9721
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->sensorFrameDurationUs:I

    .line 9722
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9724
    :cond_3
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->sensorExposureDurationUs:I

    if-eqz v1, :cond_4

    .line 9725
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->sensorExposureDurationUs:I

    .line 9726
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9728
    :cond_4
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->previousDurationUs:I

    if-eqz v1, :cond_5

    .line 9729
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->previousDurationUs:I

    .line 9730
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9732
    :cond_5
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->observedDurationUs:I

    if-eqz v1, :cond_6

    .line 9733
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->observedDurationUs:I

    .line 9734
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9736
    :cond_6
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

    .line 9681
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->timeNs:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 9682
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->timeNs:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 9684
    :cond_0
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->timeSensorNs:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 9685
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->timeSensorNs:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 9687
    :cond_1
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->frameNumber:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 9688
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->frameNumber:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 9690
    :cond_2
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->sensorFrameDurationUs:I

    if-eqz v0, :cond_3

    .line 9691
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->sensorFrameDurationUs:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9693
    :cond_3
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->sensorExposureDurationUs:I

    if-eqz v0, :cond_4

    .line 9694
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->sensorExposureDurationUs:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9696
    :cond_4
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->previousDurationUs:I

    if-eqz v0, :cond_5

    .line 9697
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->previousDurationUs:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9699
    :cond_5
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->observedDurationUs:I

    if-eqz v0, :cond_6

    .line 9700
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->observedDurationUs:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9702
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 9703
    return-void
.end method
