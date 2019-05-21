.class public final Lcom/google/common/logging/nano/eventprotos$CameraPrewarmEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$CameraPrewarmEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9828
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 10833
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraPrewarmEvent;->type:I

    .line 10834
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraPrewarmEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 10835
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraPrewarmEvent;->cachedSize:I

    .line 9830
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 9850
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 9851
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraPrewarmEvent;->type:I

    if-eqz v1, :cond_0

    .line 9852
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraPrewarmEvent;->type:I

    .line 9853
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9855
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
    .line 9842
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraPrewarmEvent;->type:I

    if-eqz v0, :cond_0

    .line 9843
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraPrewarmEvent;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9845
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 9846
    return-void
.end method
