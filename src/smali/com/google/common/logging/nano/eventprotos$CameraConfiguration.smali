.class public final Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field private cameraDirection:I

.field public captureMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9222
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 10227
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;->cameraDirection:I

    .line 10228
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;->captureMode:I

    .line 10229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 10230
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;->cachedSize:I

    .line 9224
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 9248
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 9253
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;->captureMode:I

    if-eqz v1, :cond_0

    .line 9254
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;->captureMode:I

    .line 9255
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9257
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
    .line 9240
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;->captureMode:I

    if-eqz v0, :cond_0

    .line 9241
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraConfiguration;->captureMode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9243
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 9244
    return-void
.end method
