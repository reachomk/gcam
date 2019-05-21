.class public final Lcom/google/common/logging/nano/eventprotos$NavigationChange;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$NavigationChange;",
        ">;"
    }
.end annotation


# instance fields
.field public cause:I

.field public currentMode:I

.field public modeChangeBeginNanoTime:J

.field public modeChangeEndNanoTime:J

.field public previousMode:I

.field public timeFromCaptureToFilmstrip:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1085
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->previousMode:I

    .line 1086
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->currentMode:I

    .line 1087
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->cause:I

    .line 1088
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->timeFromCaptureToFilmstrip:F

    .line 1089
    iput-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->modeChangeBeginNanoTime:J

    .line 1090
    iput-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->modeChangeEndNanoTime:J

    .line 1091
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1092
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->cachedSize:I

    .line 82
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 123
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 124
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->previousMode:I

    if-eqz v1, :cond_0

    .line 125
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->previousMode:I

    .line 126
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 128
    :cond_0
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->currentMode:I

    if-eqz v1, :cond_1

    .line 129
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->currentMode:I

    .line 130
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 132
    :cond_1
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->cause:I

    if-eqz v1, :cond_2

    .line 133
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->cause:I

    .line 134
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 136
    :cond_2
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->timeFromCaptureToFilmstrip:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    const/4 v2, 0x0

    .line 137
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 138
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->timeFromCaptureToFilmstrip:F

    .line 1569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 139
    add-int/2addr v0, v1

    .line 141
    :cond_3
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->modeChangeBeginNanoTime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 142
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->modeChangeBeginNanoTime:J

    .line 143
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    :cond_4
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->modeChangeEndNanoTime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    .line 146
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->modeChangeEndNanoTime:J

    .line 147
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 149
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

    .line 99
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->previousMode:I

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->previousMode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 102
    :cond_0
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->currentMode:I

    if-eqz v0, :cond_1

    .line 103
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->currentMode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 105
    :cond_1
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->cause:I

    if-eqz v0, :cond_2

    .line 106
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->cause:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 108
    :cond_2
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->timeFromCaptureToFilmstrip:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v1, 0x0

    .line 109
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 110
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->timeFromCaptureToFilmstrip:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 112
    :cond_3
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->modeChangeBeginNanoTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    .line 113
    const/4 v0, 0x5

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->modeChangeBeginNanoTime:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 115
    :cond_4
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->modeChangeEndNanoTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    .line 116
    const/4 v0, 0x6

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$NavigationChange;->modeChangeEndNanoTime:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 118
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 119
    return-void
.end method
