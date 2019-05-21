.class public final Lcom/google/common/logging/nano/eventprotos$CaptureTrace;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$CaptureTrace;",
        ">;"
    }
.end annotation


# instance fields
.field public actual:I

.field public selected:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8669
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 9674
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTrace;->selected:I

    .line 9675
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTrace;->actual:I

    .line 9676
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTrace;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 9677
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTrace;->cachedSize:I

    .line 8671
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 8695
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 8696
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTrace;->selected:I

    if-eqz v1, :cond_0

    .line 8697
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTrace;->selected:I

    .line 8698
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8700
    :cond_0
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTrace;->actual:I

    if-eqz v1, :cond_1

    .line 8701
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTrace;->actual:I

    .line 8702
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8704
    :cond_1
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
    .line 8684
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTrace;->selected:I

    if-eqz v0, :cond_0

    .line 8685
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTrace;->selected:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8687
    :cond_0
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTrace;->actual:I

    if-eqz v0, :cond_1

    .line 8688
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureTrace;->actual:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8690
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 8691
    return-void
.end method
