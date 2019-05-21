.class public final Lcom/google/common/logging/nano/eventprotos$BlockShotEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$BlockShotEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public endNs:J

.field public mode:I

.field public startNs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 10225
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 11230
    iput-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$BlockShotEvent;->startNs:J

    .line 11231
    iput-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$BlockShotEvent;->endNs:J

    .line 11232
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$BlockShotEvent;->mode:I

    .line 11233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$BlockShotEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 11234
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$BlockShotEvent;->cachedSize:I

    .line 10227
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 10255
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 10256
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$BlockShotEvent;->startNs:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 10257
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$BlockShotEvent;->startNs:J

    .line 10258
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10260
    :cond_0
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$BlockShotEvent;->endNs:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 10261
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$BlockShotEvent;->endNs:J

    .line 10262
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10264
    :cond_1
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$BlockShotEvent;->mode:I

    if-eqz v1, :cond_2

    .line 10265
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$BlockShotEvent;->mode:I

    .line 10266
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10268
    :cond_2
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

    .line 10241
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$BlockShotEvent;->startNs:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 10242
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$BlockShotEvent;->startNs:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 10244
    :cond_0
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$BlockShotEvent;->endNs:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 10245
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$BlockShotEvent;->endNs:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 10247
    :cond_1
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$BlockShotEvent;->mode:I

    if-eqz v0, :cond_2

    .line 10248
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$BlockShotEvent;->mode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10250
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 10251
    return-void
.end method
