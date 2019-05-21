.class public final Lcom/google/common/logging/nano/eventprotos$SmartBurstCreationMetaData;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$SmartBurstCreationMetaData;",
        ">;"
    }
.end annotation


# instance fields
.field public creationType:I

.field public directoryNameHash:Ljava/lang/String;

.field public generationCause:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5181
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6186
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCreationMetaData;->directoryNameHash:Ljava/lang/String;

    .line 6187
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCreationMetaData;->creationType:I

    .line 6188
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCreationMetaData;->generationCause:I

    .line 6189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCreationMetaData;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 6190
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCreationMetaData;->cachedSize:I

    .line 5183
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 5211
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 5212
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCreationMetaData;->directoryNameHash:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCreationMetaData;->directoryNameHash:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5213
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCreationMetaData;->directoryNameHash:Ljava/lang/String;

    .line 5214
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5216
    :cond_0
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCreationMetaData;->creationType:I

    if-eqz v1, :cond_1

    .line 5217
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCreationMetaData;->creationType:I

    .line 5218
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5220
    :cond_1
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCreationMetaData;->generationCause:I

    if-eqz v1, :cond_2

    .line 5221
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCreationMetaData;->generationCause:I

    .line 5222
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5224
    :cond_2
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
    .line 5197
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCreationMetaData;->directoryNameHash:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCreationMetaData;->directoryNameHash:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5198
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCreationMetaData;->directoryNameHash:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5200
    :cond_0
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCreationMetaData;->creationType:I

    if-eqz v0, :cond_1

    .line 5201
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCreationMetaData;->creationType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5203
    :cond_1
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCreationMetaData;->generationCause:I

    if-eqz v0, :cond_2

    .line 5204
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCreationMetaData;->generationCause:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5206
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5207
    return-void
.end method
