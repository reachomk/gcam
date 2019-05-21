.class public final Lcom/google/common/logging/nano/eventprotos$PhotoMetaData;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$PhotoMetaData;",
        ">;"
    }
.end annotation


# instance fields
.field public flash:Z

.field public hdr:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2711
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3716
    iput-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$PhotoMetaData;->hdr:Z

    .line 3717
    iput-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$PhotoMetaData;->flash:Z

    .line 3718
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$PhotoMetaData;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3719
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$PhotoMetaData;->cachedSize:I

    .line 2713
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 2737
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2738
    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$PhotoMetaData;->hdr:Z

    if-eqz v1, :cond_0

    .line 2739
    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$PhotoMetaData;->hdr:Z

    .line 4620
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 2740
    add-int/2addr v0, v1

    .line 2742
    :cond_0
    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$PhotoMetaData;->flash:Z

    if-eqz v1, :cond_1

    .line 2743
    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$PhotoMetaData;->flash:Z

    .line 5620
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 2744
    add-int/2addr v0, v1

    .line 2746
    :cond_1
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
    .line 2726
    iget-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$PhotoMetaData;->hdr:Z

    if-eqz v0, :cond_0

    .line 2727
    const/16 v0, 0x8

    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$PhotoMetaData;->hdr:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2729
    :cond_0
    iget-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$PhotoMetaData;->flash:Z

    if-eqz v0, :cond_1

    .line 2730
    const/16 v0, 0x9

    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$PhotoMetaData;->flash:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2732
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2733
    return-void
.end method
