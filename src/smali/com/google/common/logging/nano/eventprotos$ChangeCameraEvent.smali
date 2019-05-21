.class public final Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public changeCameraEndNanoTime:J

.field public changeCameraStartNanoTime:J

.field public changeMethod:I

.field public isAbort:Z

.field public source:I

.field public target:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 10052
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 11057
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->source:I

    .line 11058
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->target:I

    .line 11059
    iput-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->changeCameraStartNanoTime:J

    .line 11060
    iput-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->changeCameraEndNanoTime:J

    .line 11061
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->changeMethod:I

    .line 11062
    iput-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->isAbort:Z

    .line 11063
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 11064
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->cachedSize:I

    .line 10054
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 10094
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 10095
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->source:I

    if-eqz v1, :cond_0

    .line 10096
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->source:I

    .line 10097
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10099
    :cond_0
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->target:I

    if-eqz v1, :cond_1

    .line 10100
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->target:I

    .line 10101
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10103
    :cond_1
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->changeCameraStartNanoTime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 10104
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->changeCameraStartNanoTime:J

    .line 10105
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10107
    :cond_2
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->changeCameraEndNanoTime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 10108
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->changeCameraEndNanoTime:J

    .line 10109
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10111
    :cond_3
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->changeMethod:I

    if-eqz v1, :cond_4

    .line 10112
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->changeMethod:I

    .line 10113
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10115
    :cond_4
    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->isAbort:Z

    if-eqz v1, :cond_5

    .line 10116
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->isAbort:Z

    .line 11620
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 10117
    add-int/2addr v0, v1

    .line 10119
    :cond_5
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

    .line 10071
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->source:I

    if-eqz v0, :cond_0

    .line 10072
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->source:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10074
    :cond_0
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->target:I

    if-eqz v0, :cond_1

    .line 10075
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->target:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10077
    :cond_1
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->changeCameraStartNanoTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 10078
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->changeCameraStartNanoTime:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 10080
    :cond_2
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->changeCameraEndNanoTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 10081
    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->changeCameraEndNanoTime:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 10083
    :cond_3
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->changeMethod:I

    if-eqz v0, :cond_4

    .line 10084
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->changeMethod:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10086
    :cond_4
    iget-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->isAbort:Z

    if-eqz v0, :cond_5

    .line 10087
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;->isAbort:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 10089
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 10090
    return-void
.end method
