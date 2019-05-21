.class public final Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public cameraConfiguration:Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

.field public captureFailNs:J

.field public captureStartNs:J

.field public captureTrace:Lcom/google/common/logging/nano/eventprotos$CaptureTrace;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 8400
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 9405
    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;->cameraConfiguration:Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

    .line 9406
    iput-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;->captureStartNs:J

    .line 9407
    iput-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;->captureFailNs:J

    .line 9408
    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;->captureTrace:Lcom/google/common/logging/nano/eventprotos$CaptureTrace;

    .line 9409
    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 9410
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;->cachedSize:I

    .line 8402
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 8434
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 8435
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;->cameraConfiguration:Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

    if-eqz v1, :cond_0

    .line 8436
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;->cameraConfiguration:Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

    .line 8437
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8439
    :cond_0
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;->captureStartNs:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 8440
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;->captureStartNs:J

    .line 8441
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8443
    :cond_1
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;->captureFailNs:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 8444
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;->captureFailNs:J

    .line 8445
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8447
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;->captureTrace:Lcom/google/common/logging/nano/eventprotos$CaptureTrace;

    if-eqz v1, :cond_3

    .line 8448
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;->captureTrace:Lcom/google/common/logging/nano/eventprotos$CaptureTrace;

    .line 8449
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8451
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

    .line 8417
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;->cameraConfiguration:Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

    if-eqz v0, :cond_0

    .line 8418
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;->cameraConfiguration:Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8420
    :cond_0
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;->captureStartNs:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 8421
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;->captureStartNs:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8423
    :cond_1
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;->captureFailNs:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 8424
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;->captureFailNs:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8426
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;->captureTrace:Lcom/google/common/logging/nano/eventprotos$CaptureTrace;

    if-eqz v0, :cond_3

    .line 8427
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;->captureTrace:Lcom/google/common/logging/nano/eventprotos$CaptureTrace;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8429
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 8430
    return-void
.end method
