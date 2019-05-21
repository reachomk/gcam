.class public final Lcom/google/common/logging/nano/eventprotos$AdviceMetaData;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$AdviceMetaData;",
        ">;"
    }
.end annotation


# instance fields
.field public dirtyLensProbability:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2619
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3624
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$AdviceMetaData;->dirtyLensProbability:F

    .line 3625
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$AdviceMetaData;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3626
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$AdviceMetaData;->cachedSize:I

    .line 2621
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 2642
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2643
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$AdviceMetaData;->dirtyLensProbability:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    const/4 v2, 0x0

    .line 2644
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 2645
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$AdviceMetaData;->dirtyLensProbability:F

    .line 4569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 2646
    add-int/2addr v0, v1

    .line 2648
    :cond_0
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
    .line 2633
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$AdviceMetaData;->dirtyLensProbability:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v1, 0x0

    .line 2634
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2635
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$AdviceMetaData;->dirtyLensProbability:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2637
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2638
    return-void
.end method
