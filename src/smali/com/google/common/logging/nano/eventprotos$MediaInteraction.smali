.class public final Lcom/google/common/logging/nano/eventprotos$MediaInteraction;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$MediaInteraction;",
        ">;"
    }
.end annotation


# instance fields
.field public age:F

.field public cause:I

.field public fileNameHash:Ljava/lang/String;

.field private intentTarget:Ljava/lang/String;

.field public interactionType:I

.field public viewZoomLevel:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 7530
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8535
    iput v2, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->interactionType:I

    .line 8536
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->intentTarget:Ljava/lang/String;

    .line 8537
    iput v2, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->cause:I

    .line 8538
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->fileNameHash:Ljava/lang/String;

    .line 8539
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->age:F

    .line 8540
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->viewZoomLevel:F

    .line 8541
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 8542
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->cachedSize:I

    .line 7532
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 7574
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 7575
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->interactionType:I

    if-eqz v1, :cond_0

    .line 7576
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->interactionType:I

    .line 7577
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7579
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->intentTarget:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->intentTarget:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7580
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->intentTarget:Ljava/lang/String;

    .line 7581
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7583
    :cond_1
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->cause:I

    if-eqz v1, :cond_2

    .line 7584
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->cause:I

    .line 7585
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7587
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->fileNameHash:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->fileNameHash:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 7588
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->fileNameHash:Ljava/lang/String;

    .line 7589
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7591
    :cond_3
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->age:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 7592
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 7593
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->age:F

    .line 8569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 7594
    add-int/2addr v0, v1

    .line 7596
    :cond_4
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->viewZoomLevel:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 7597
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_5

    .line 7598
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->viewZoomLevel:F

    .line 9569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 7599
    add-int/2addr v0, v1

    .line 7601
    :cond_5
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

    .line 7549
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->interactionType:I

    if-eqz v0, :cond_0

    .line 7550
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->interactionType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7552
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->intentTarget:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->intentTarget:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7553
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->intentTarget:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7555
    :cond_1
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->cause:I

    if-eqz v0, :cond_2

    .line 7556
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->cause:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7558
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->fileNameHash:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->fileNameHash:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7559
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->fileNameHash:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7561
    :cond_3
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->age:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 7562
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 7563
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->age:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 7565
    :cond_4
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->viewZoomLevel:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 7566
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 7567
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$MediaInteraction;->viewZoomLevel:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 7569
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 7570
    return-void
.end method
