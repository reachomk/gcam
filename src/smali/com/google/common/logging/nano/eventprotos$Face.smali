.class public final Lcom/google/common/logging/nano/eventprotos$Face;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$Face;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/eventprotos$Face;


# instance fields
.field public maxX:F

.field public maxY:F

.field public score:F

.field public x0:F

.field public x1:F

.field public y0:F

.field public y1:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1664
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2669
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$Face;->x0:F

    .line 2670
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$Face;->x1:F

    .line 2671
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$Face;->y0:F

    .line 2672
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$Face;->y1:F

    .line 2673
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$Face;->maxX:F

    .line 2674
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$Face;->maxY:F

    .line 2675
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$Face;->score:F

    .line 2676
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$Face;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 2677
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$Face;->cachedSize:I

    .line 1666
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/eventprotos$Face;
    .locals 2

    .prologue
    .line 1630
    sget-object v0, Lcom/google/common/logging/nano/eventprotos$Face;->_emptyArray:[Lcom/google/common/logging/nano/eventprotos$Face;

    if-nez v0, :cond_1

    .line 1631
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1633
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/eventprotos$Face;->_emptyArray:[Lcom/google/common/logging/nano/eventprotos$Face;

    if-nez v0, :cond_0

    .line 1634
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/eventprotos$Face;

    sput-object v0, Lcom/google/common/logging/nano/eventprotos$Face;->_emptyArray:[Lcom/google/common/logging/nano/eventprotos$Face;

    .line 1636
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1638
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/eventprotos$Face;->_emptyArray:[Lcom/google/common/logging/nano/eventprotos$Face;

    return-object v0

    .line 1636
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1717
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1718
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$Face;->x0:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1719
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1720
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$Face;->x0:F

    .line 3569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 1721
    add-int/2addr v0, v1

    .line 1723
    :cond_0
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$Face;->x1:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1724
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1725
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$Face;->x1:F

    .line 4569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 1726
    add-int/2addr v0, v1

    .line 1728
    :cond_1
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$Face;->y0:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1729
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 1730
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$Face;->y0:F

    .line 5569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 1731
    add-int/2addr v0, v1

    .line 1733
    :cond_2
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$Face;->y1:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1734
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 1735
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$Face;->y1:F

    .line 6569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 1736
    add-int/2addr v0, v1

    .line 1738
    :cond_3
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$Face;->maxX:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1739
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 1740
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$Face;->maxX:F

    .line 7569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 1741
    add-int/2addr v0, v1

    .line 1743
    :cond_4
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$Face;->maxY:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1744
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_5

    .line 1745
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$Face;->maxY:F

    .line 8569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 1746
    add-int/2addr v0, v1

    .line 1748
    :cond_5
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$Face;->score:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1749
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_6

    .line 1750
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$Face;->score:F

    .line 9569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 1751
    add-int/2addr v0, v1

    .line 1753
    :cond_6
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

    .line 1684
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$Face;->x0:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 1685
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1686
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$Face;->x0:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1688
    :cond_0
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$Face;->x1:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 1689
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1690
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$Face;->x1:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1692
    :cond_1
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$Face;->y0:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 1693
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 1694
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$Face;->y0:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1696
    :cond_2
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$Face;->y1:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 1697
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 1698
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$Face;->y1:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1700
    :cond_3
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$Face;->maxX:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 1701
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 1702
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$Face;->maxX:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1704
    :cond_4
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$Face;->maxY:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 1705
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 1706
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$Face;->maxY:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1708
    :cond_5
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$Face;->score:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 1709
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 1710
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$Face;->score:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1712
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1713
    return-void
.end method
