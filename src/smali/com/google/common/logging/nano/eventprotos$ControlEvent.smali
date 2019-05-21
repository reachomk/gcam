.class public final Lcom/google/common/logging/nano/eventprotos$ControlEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$ControlEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public control:I

.field public mode:I

.field private nanoTime:J

.field public ttfMeta:Lcom/google/common/logging/nano/eventprotos$TapToFocusMeta;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 7178
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8183
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$ControlEvent;->control:I

    .line 8184
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$ControlEvent;->mode:I

    .line 8185
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$ControlEvent;->nanoTime:J

    .line 8186
    iput-object v2, p0, Lcom/google/common/logging/nano/eventprotos$ControlEvent;->ttfMeta:Lcom/google/common/logging/nano/eventprotos$TapToFocusMeta;

    .line 8187
    iput-object v2, p0, Lcom/google/common/logging/nano/eventprotos$ControlEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 8188
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$ControlEvent;->cachedSize:I

    .line 7180
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 7212
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 7213
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$ControlEvent;->control:I

    if-eqz v1, :cond_0

    .line 7214
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$ControlEvent;->control:I

    .line 7215
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7217
    :cond_0
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$ControlEvent;->mode:I

    if-eqz v1, :cond_1

    .line 7218
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$ControlEvent;->mode:I

    .line 7219
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7221
    :cond_1
    cmp-long v1, v4, v4

    if-eqz v1, :cond_2

    .line 7222
    const/4 v1, 0x3

    .line 7223
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7225
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$ControlEvent;->ttfMeta:Lcom/google/common/logging/nano/eventprotos$TapToFocusMeta;

    if-eqz v1, :cond_3

    .line 7226
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$ControlEvent;->ttfMeta:Lcom/google/common/logging/nano/eventprotos$TapToFocusMeta;

    .line 7227
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7229
    :cond_3
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
    const-wide/16 v2, 0x0

    .line 7195
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$ControlEvent;->control:I

    if-eqz v0, :cond_0

    .line 7196
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$ControlEvent;->control:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7198
    :cond_0
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$ControlEvent;->mode:I

    if-eqz v0, :cond_1

    .line 7199
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$ControlEvent;->mode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7201
    :cond_1
    cmp-long v0, v2, v2

    if-eqz v0, :cond_2

    .line 7202
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 7204
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$ControlEvent;->ttfMeta:Lcom/google/common/logging/nano/eventprotos$TapToFocusMeta;

    if-eqz v0, :cond_3

    .line 7205
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$ControlEvent;->ttfMeta:Lcom/google/common/logging/nano/eventprotos$TapToFocusMeta;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 7207
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 7208
    return-void
.end method
