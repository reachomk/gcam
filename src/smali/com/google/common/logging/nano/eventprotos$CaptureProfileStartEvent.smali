.class public final Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public cameraConfiguration:Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

.field public captureStartNs:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8013
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 9018
    iput-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartEvent;->cameraConfiguration:Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

    .line 9019
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartEvent;->captureStartNs:J

    .line 9020
    iput-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 9021
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartEvent;->cachedSize:I

    .line 8015
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 6

    .prologue
    .line 8039
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 8040
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartEvent;->cameraConfiguration:Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

    if-eqz v1, :cond_0

    .line 8041
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartEvent;->cameraConfiguration:Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

    .line 8042
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8044
    :cond_0
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartEvent;->captureStartNs:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 8045
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartEvent;->captureStartNs:J

    .line 8046
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8048
    :cond_1
    return v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8028
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartEvent;->cameraConfiguration:Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

    if-eqz v0, :cond_0

    .line 8029
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartEvent;->cameraConfiguration:Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8031
    :cond_0
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartEvent;->captureStartNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 8032
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartEvent;->captureStartNs:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8034
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 8035
    return-void
.end method
