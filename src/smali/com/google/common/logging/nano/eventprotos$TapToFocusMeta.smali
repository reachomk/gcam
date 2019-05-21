.class public final Lcom/google/common/logging/nano/eventprotos$TapToFocusMeta;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$TapToFocusMeta;",
        ">;"
    }
.end annotation


# instance fields
.field public duration:F

.field private face:[Lcom/google/common/logging/nano/eventprotos$Face;

.field private orientation:Lcom/google/common/logging/nano/eventprotos$SensorVector;

.field public touchCoord:Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7346
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8351
    iput-object v1, p0, Lcom/google/common/logging/nano/eventprotos$TapToFocusMeta;->touchCoord:Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;

    .line 8352
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$TapToFocusMeta;->duration:F

    .line 8353
    invoke-static {}, Lcom/google/common/logging/nano/eventprotos$Face;->emptyArray()[Lcom/google/common/logging/nano/eventprotos$Face;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$TapToFocusMeta;->face:[Lcom/google/common/logging/nano/eventprotos$Face;

    .line 8354
    iput-object v1, p0, Lcom/google/common/logging/nano/eventprotos$TapToFocusMeta;->orientation:Lcom/google/common/logging/nano/eventprotos$SensorVector;

    .line 8355
    iput-object v1, p0, Lcom/google/common/logging/nano/eventprotos$TapToFocusMeta;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 8356
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$TapToFocusMeta;->cachedSize:I

    .line 7348
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    .prologue
    .line 7386
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 7387
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$TapToFocusMeta;->touchCoord:Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;

    if-eqz v1, :cond_0

    .line 7388
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$TapToFocusMeta;->touchCoord:Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;

    .line 7389
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7391
    :cond_0
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$TapToFocusMeta;->duration:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    const/4 v2, 0x0

    .line 7392
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 7393
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$TapToFocusMeta;->duration:F

    .line 8569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 7394
    add-int/2addr v0, v1

    .line 7396
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$TapToFocusMeta;->face:[Lcom/google/common/logging/nano/eventprotos$Face;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$TapToFocusMeta;->face:[Lcom/google/common/logging/nano/eventprotos$Face;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 7397
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$TapToFocusMeta;->face:[Lcom/google/common/logging/nano/eventprotos$Face;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 7398
    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$TapToFocusMeta;->face:[Lcom/google/common/logging/nano/eventprotos$Face;

    aget-object v2, v2, v0

    .line 7399
    if-eqz v2, :cond_2

    .line 7400
    const/4 v3, 0x3

    .line 7401
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 7397
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 7409
    :cond_4
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
    .line 7363
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$TapToFocusMeta;->touchCoord:Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;

    if-eqz v0, :cond_0

    .line 7364
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$TapToFocusMeta;->touchCoord:Lcom/google/common/logging/nano/eventprotos$TouchCoordinate;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 7366
    :cond_0
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$TapToFocusMeta;->duration:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v1, 0x0

    .line 7367
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 7368
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$TapToFocusMeta;->duration:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 7370
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$TapToFocusMeta;->face:[Lcom/google/common/logging/nano/eventprotos$Face;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$TapToFocusMeta;->face:[Lcom/google/common/logging/nano/eventprotos$Face;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 7371
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$TapToFocusMeta;->face:[Lcom/google/common/logging/nano/eventprotos$Face;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 7372
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$TapToFocusMeta;->face:[Lcom/google/common/logging/nano/eventprotos$Face;

    aget-object v1, v1, v0

    .line 7373
    if-eqz v1, :cond_2

    .line 7374
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 7371
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7381
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 7382
    return-void
.end method
