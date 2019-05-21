.class public final Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public cameraConfiguration:Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

.field public captureAbortNs:J

.field public captureStartNs:J

.field public captureTrace:Lcom/google/common/logging/nano/eventprotos$CaptureTrace;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 8262
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 9267
    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;->cameraConfiguration:Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

    .line 9268
    iput-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;->captureStartNs:J

    .line 9269
    iput-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;->captureAbortNs:J

    .line 9270
    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;->captureTrace:Lcom/google/common/logging/nano/eventprotos$CaptureTrace;

    .line 9271
    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 9272
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;->cachedSize:I

    .line 8264
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 8296
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 8297
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;->cameraConfiguration:Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

    if-eqz v1, :cond_0

    .line 8298
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;->cameraConfiguration:Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

    .line 8299
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8301
    :cond_0
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;->captureStartNs:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 8302
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;->captureStartNs:J

    .line 8303
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8305
    :cond_1
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;->captureAbortNs:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 8306
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;->captureAbortNs:J

    .line 8307
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8309
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;->captureTrace:Lcom/google/common/logging/nano/eventprotos$CaptureTrace;

    if-eqz v1, :cond_3

    .line 8310
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;->captureTrace:Lcom/google/common/logging/nano/eventprotos$CaptureTrace;

    .line 8311
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8313
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

    .line 8279
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;->cameraConfiguration:Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

    if-eqz v0, :cond_0

    .line 8280
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;->cameraConfiguration:Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8282
    :cond_0
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;->captureStartNs:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 8283
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;->captureStartNs:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8285
    :cond_1
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;->captureAbortNs:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 8286
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;->captureAbortNs:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8288
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;->captureTrace:Lcom/google/common/logging/nano/eventprotos$CaptureTrace;

    if-eqz v0, :cond_3

    .line 8289
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;->captureTrace:Lcom/google/common/logging/nano/eventprotos$CaptureTrace;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8291
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 8292
    return-void
.end method
