.class public final Lcom/google/common/logging/nano/eventprotos$CaptureProfileEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$CaptureProfileEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public cameraConfiguration:Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

.field public captureTrace:Lcom/google/common/logging/nano/eventprotos$CaptureTrace;

.field public timing:Lcom/google/common/logging/nano/eventprotos$CaptureTiming;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8535
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 9540
    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileEvent;->cameraConfiguration:Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

    .line 9541
    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileEvent;->timing:Lcom/google/common/logging/nano/eventprotos$CaptureTiming;

    .line 9542
    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileEvent;->captureTrace:Lcom/google/common/logging/nano/eventprotos$CaptureTrace;

    .line 9543
    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 9544
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileEvent;->cachedSize:I

    .line 8537
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 8565
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 8566
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileEvent;->cameraConfiguration:Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

    if-eqz v1, :cond_0

    .line 8567
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileEvent;->cameraConfiguration:Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

    .line 8568
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8570
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileEvent;->timing:Lcom/google/common/logging/nano/eventprotos$CaptureTiming;

    if-eqz v1, :cond_1

    .line 8571
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileEvent;->timing:Lcom/google/common/logging/nano/eventprotos$CaptureTiming;

    .line 8572
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8574
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileEvent;->captureTrace:Lcom/google/common/logging/nano/eventprotos$CaptureTrace;

    if-eqz v1, :cond_2

    .line 8575
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileEvent;->captureTrace:Lcom/google/common/logging/nano/eventprotos$CaptureTrace;

    .line 8576
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8578
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
    .line 8551
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileEvent;->cameraConfiguration:Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

    if-eqz v0, :cond_0

    .line 8552
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileEvent;->cameraConfiguration:Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8554
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileEvent;->timing:Lcom/google/common/logging/nano/eventprotos$CaptureTiming;

    if-eqz v0, :cond_1

    .line 8555
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileEvent;->timing:Lcom/google/common/logging/nano/eventprotos$CaptureTiming;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8557
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileEvent;->captureTrace:Lcom/google/common/logging/nano/eventprotos$CaptureTrace;

    if-eqz v0, :cond_2

    .line 8558
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureProfileEvent;->captureTrace:Lcom/google/common/logging/nano/eventprotos$CaptureTrace;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8560
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 8561
    return-void
.end method
