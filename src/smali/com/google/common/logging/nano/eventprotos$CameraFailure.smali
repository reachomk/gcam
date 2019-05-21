.class public final Lcom/google/common/logging/nano/eventprotos$CameraFailure;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$CameraFailure;",
        ">;"
    }
.end annotation


# instance fields
.field private api:I

.field public cameraAgentAction:I

.field public cameraAgentState:I

.field public hdrPlusShotsInFlight:I

.field public info:Ljava/lang/String;

.field public osBuildDisplay:Ljava/lang/String;

.field public reason:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7743
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8748
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->reason:I

    .line 8749
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->info:Ljava/lang/String;

    .line 8750
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->osBuildDisplay:Ljava/lang/String;

    .line 8751
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->cameraAgentAction:I

    .line 8752
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->cameraAgentState:I

    .line 8753
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->api:I

    .line 8754
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->hdrPlusShotsInFlight:I

    .line 8755
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 8756
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->cachedSize:I

    .line 7745
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 7789
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 7790
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->reason:I

    if-eqz v1, :cond_0

    .line 7791
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->reason:I

    .line 7792
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7794
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->info:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->info:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7795
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->info:Ljava/lang/String;

    .line 7796
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7798
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->osBuildDisplay:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->osBuildDisplay:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 7799
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->osBuildDisplay:Ljava/lang/String;

    .line 7800
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7802
    :cond_2
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->cameraAgentAction:I

    if-eqz v1, :cond_3

    .line 7803
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->cameraAgentAction:I

    .line 7804
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7806
    :cond_3
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->cameraAgentState:I

    if-eqz v1, :cond_4

    .line 7807
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->cameraAgentState:I

    .line 7808
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7814
    :cond_4
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->hdrPlusShotsInFlight:I

    if-eqz v1, :cond_5

    .line 7815
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->hdrPlusShotsInFlight:I

    .line 7816
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7818
    :cond_5
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
    .line 7763
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->reason:I

    if-eqz v0, :cond_0

    .line 7764
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->reason:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7766
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->info:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->info:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7767
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->info:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7769
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->osBuildDisplay:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->osBuildDisplay:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7770
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->osBuildDisplay:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7772
    :cond_2
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->cameraAgentAction:I

    if-eqz v0, :cond_3

    .line 7773
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->cameraAgentAction:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7775
    :cond_3
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->cameraAgentState:I

    if-eqz v0, :cond_4

    .line 7776
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->cameraAgentState:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7781
    :cond_4
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->hdrPlusShotsInFlight:I

    if-eqz v0, :cond_5

    .line 7782
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraFailure;->hdrPlusShotsInFlight:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7784
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 7785
    return-void
.end method
