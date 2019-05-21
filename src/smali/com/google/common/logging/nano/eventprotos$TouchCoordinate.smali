.class public final Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;",
        ">;"
    }
.end annotation


# instance fields
.field public maxX:F

.field public maxY:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1515
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2520
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;->x:F

    .line 2521
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;->y:F

    .line 2522
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;->maxX:F

    .line 2523
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;->maxY:F

    .line 2524
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 2525
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;->cachedSize:I

    .line 1517
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1553
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1554
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;->x:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1555
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1556
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;->x:F

    .line 2569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 1557
    add-int/2addr v0, v1

    .line 1559
    :cond_0
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;->y:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1560
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1561
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;->y:F

    .line 3569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 1562
    add-int/2addr v0, v1

    .line 1564
    :cond_1
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;->maxX:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1565
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 1566
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;->maxX:F

    .line 4569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 1567
    add-int/2addr v0, v1

    .line 1569
    :cond_2
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;->maxY:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1570
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 1571
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;->maxY:F

    .line 5569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 1572
    add-int/2addr v0, v1

    .line 1574
    :cond_3
    return v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1532
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;->x:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 1533
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1534
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;->x:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1536
    :cond_0
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;->y:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 1537
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1538
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;->y:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1540
    :cond_1
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;->maxX:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 1541
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 1542
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;->maxX:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1544
    :cond_2
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;->maxY:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 1545
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 1546
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;->maxY:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1548
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1549
    return-void
.end method
