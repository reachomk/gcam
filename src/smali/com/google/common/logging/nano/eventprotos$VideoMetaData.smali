.class public final Lcom/google/common/logging/nano/eventprotos$VideoMetaData;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$VideoMetaData;",
        ">;"
    }
.end annotation


# instance fields
.field public cameraFrameDropCount:I

.field public duration:F

.field public frameRate:F

.field public height:I

.field public isStabilizationUsed:Z

.field public size:J

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3417
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4422
    iput v3, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->duration:F

    .line 4423
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->size:J

    .line 4424
    iput v2, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->height:I

    .line 4425
    iput v2, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->width:I

    .line 4426
    iput v3, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->frameRate:F

    .line 4427
    iput-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->isStabilizationUsed:Z

    .line 4428
    iput v2, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->cameraFrameDropCount:I

    .line 4429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 4430
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->cachedSize:I

    .line 3419
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3465
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 3466
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->duration:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 3467
    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 3468
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->duration:F

    .line 4569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 3469
    add-int/2addr v0, v1

    .line 3471
    :cond_0
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->size:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 3472
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->size:J

    .line 3473
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3475
    :cond_1
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->height:I

    if-eqz v1, :cond_2

    .line 3476
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->height:I

    .line 3477
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3479
    :cond_2
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->width:I

    if-eqz v1, :cond_3

    .line 3480
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->width:I

    .line 3481
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3483
    :cond_3
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->frameRate:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 3484
    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 3485
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->frameRate:F

    .line 5569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 3486
    add-int/2addr v0, v1

    .line 3488
    :cond_4
    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->isStabilizationUsed:Z

    if-eqz v1, :cond_5

    .line 3489
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->isStabilizationUsed:Z

    .line 5620
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 3490
    add-int/2addr v0, v1

    .line 3492
    :cond_5
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->cameraFrameDropCount:I

    if-eqz v1, :cond_6

    .line 3493
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->cameraFrameDropCount:I

    .line 3494
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3496
    :cond_6
    return v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3437
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->duration:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 3438
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3439
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->duration:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3441
    :cond_0
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 3442
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->size:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3444
    :cond_1
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->height:I

    if-eqz v0, :cond_2

    .line 3445
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->height:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3447
    :cond_2
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->width:I

    if-eqz v0, :cond_3

    .line 3448
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->width:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3450
    :cond_3
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->frameRate:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 3451
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 3452
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->frameRate:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3454
    :cond_4
    iget-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->isStabilizationUsed:Z

    if-eqz v0, :cond_5

    .line 3455
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->isStabilizationUsed:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3457
    :cond_5
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->cameraFrameDropCount:I

    if-eqz v0, :cond_6

    .line 3458
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$VideoMetaData;->cameraFrameDropCount:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3460
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3461
    return-void
.end method
