.class public final Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public cameraConfiguration:Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

.field public captureStartCommittedNs:J

.field public captureStartNs:J

.field public captureTrace:Lcom/google/common/logging/nano/eventprotos$CaptureTrace;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 8124
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 9129
    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;->cameraConfiguration:Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

    .line 9130
    iput-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;->captureStartNs:J

    .line 9131
    iput-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;->captureStartCommittedNs:J

    .line 9132
    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;->captureTrace:Lcom/google/common/logging/nano/eventprotos$CaptureTrace;

    .line 9133
    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 9134
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;->cachedSize:I

    .line 8126
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 8158
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 8159
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;->cameraConfiguration:Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

    if-eqz v1, :cond_0

    .line 8160
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;->cameraConfiguration:Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

    .line 8161
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8163
    :cond_0
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;->captureStartNs:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 8164
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;->captureStartNs:J

    .line 8165
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8167
    :cond_1
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;->captureStartCommittedNs:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 8168
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;->captureStartCommittedNs:J

    .line 8169
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8171
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;->captureTrace:Lcom/google/common/logging/nano/eventprotos$CaptureTrace;

    if-eqz v1, :cond_3

    .line 8172
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;->captureTrace:Lcom/google/common/logging/nano/eventprotos$CaptureTrace;

    .line 8173
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8175
    :cond_3
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

    .line 8141
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;->cameraConfiguration:Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

    if-eqz v0, :cond_0

    .line 8142
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;->cameraConfiguration:Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8144
    :cond_0
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;->captureStartNs:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 8145
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;->captureStartNs:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8147
    :cond_1
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;->captureStartCommittedNs:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 8148
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;->captureStartCommittedNs:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8150
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;->captureTrace:Lcom/google/common/logging/nano/eventprotos$CaptureTrace;

    if-eqz v0, :cond_3

    .line 8151
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;->captureTrace:Lcom/google/common/logging/nano/eventprotos$CaptureTrace;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8153
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 8154
    return-void
.end method
