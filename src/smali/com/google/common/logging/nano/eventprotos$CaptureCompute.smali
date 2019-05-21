.class public final Lcom/google/common/logging/nano/eventprotos$CaptureCompute;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$CaptureCompute;",
        ">;"
    }
.end annotation


# instance fields
.field public lensblurReport:Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;

.field public mode:I

.field public photosphereReport:Lcom/google/common/logging/nano/eventprotos$PhotoSphereCaptureReport;

.field public smartburstReport:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 708
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1713
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureCompute;->mode:I

    .line 1714
    iput-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureCompute;->lensblurReport:Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;

    .line 1715
    iput-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureCompute;->photosphereReport:Lcom/google/common/logging/nano/eventprotos$PhotoSphereCaptureReport;

    .line 1716
    iput-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureCompute;->smartburstReport:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    .line 1717
    iput-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureCompute;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1718
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureCompute;->cachedSize:I

    .line 710
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 742
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 743
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureCompute;->mode:I

    if-eqz v1, :cond_0

    .line 744
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureCompute;->mode:I

    .line 745
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 747
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureCompute;->lensblurReport:Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;

    if-eqz v1, :cond_1

    .line 748
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureCompute;->lensblurReport:Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;

    .line 749
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 751
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureCompute;->photosphereReport:Lcom/google/common/logging/nano/eventprotos$PhotoSphereCaptureReport;

    if-eqz v1, :cond_2

    .line 752
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureCompute;->photosphereReport:Lcom/google/common/logging/nano/eventprotos$PhotoSphereCaptureReport;

    .line 753
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 755
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureCompute;->smartburstReport:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    if-eqz v1, :cond_3

    .line 756
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CaptureCompute;->smartburstReport:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    .line 757
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 759
    :cond_3
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
    .line 725
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureCompute;->mode:I

    if-eqz v0, :cond_0

    .line 726
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureCompute;->mode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureCompute;->lensblurReport:Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;

    if-eqz v0, :cond_1

    .line 729
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureCompute;->lensblurReport:Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 731
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureCompute;->photosphereReport:Lcom/google/common/logging/nano/eventprotos$PhotoSphereCaptureReport;

    if-eqz v0, :cond_2

    .line 732
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureCompute;->photosphereReport:Lcom/google/common/logging/nano/eventprotos$PhotoSphereCaptureReport;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 734
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CaptureCompute;->smartburstReport:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    if-eqz v0, :cond_3

    .line 735
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CaptureCompute;->smartburstReport:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 737
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 738
    return-void
.end method
