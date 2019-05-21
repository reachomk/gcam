.class public final Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private autoFocusReport:Lcom/google/common/logging/nano/eventprotos$AutoFocusReport;

.field public dirtyLensEvents:[Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;

.field public launchReport:Lcom/google/common/logging/nano/eventprotos$LaunchReport;

.field private meteringData:[Lcom/google/common/logging/nano/eventprotos$MeteringData;

.field public previewSmoothnessReport:[Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;

.field public shutterButtonDisabledDuration:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6750
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 7755
    iput-object v1, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->autoFocusReport:Lcom/google/common/logging/nano/eventprotos$AutoFocusReport;

    .line 7756
    iput-object v1, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->launchReport:Lcom/google/common/logging/nano/eventprotos$LaunchReport;

    .line 7757
    invoke-static {}, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->emptyArray()[Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->previewSmoothnessReport:[Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;

    .line 7758
    invoke-static {}, Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;->emptyArray()[Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->dirtyLensEvents:[Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;

    .line 7759
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->shutterButtonDisabledDuration:F

    .line 7760
    invoke-static {}, Lcom/google/common/logging/nano/eventprotos$MeteringData;->emptyArray()[Lcom/google/common/logging/nano/eventprotos$MeteringData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->meteringData:[Lcom/google/common/logging/nano/eventprotos$MeteringData;

    .line 7761
    iput-object v1, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 7762
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->cachedSize:I

    .line 6752
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 6808
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 6813
    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->launchReport:Lcom/google/common/logging/nano/eventprotos$LaunchReport;

    if-eqz v2, :cond_0

    .line 6814
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->launchReport:Lcom/google/common/logging/nano/eventprotos$LaunchReport;

    .line 6815
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6817
    :cond_0
    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->previewSmoothnessReport:[Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->previewSmoothnessReport:[Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 6818
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->previewSmoothnessReport:[Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 6819
    iget-object v3, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->previewSmoothnessReport:[Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;

    aget-object v3, v3, v0

    .line 6820
    if-eqz v3, :cond_1

    .line 6821
    const/4 v4, 0x3

    .line 6822
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 6818
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 6826
    :cond_3
    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->dirtyLensEvents:[Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->dirtyLensEvents:[Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v0

    move v0, v1

    .line 6827
    :goto_1
    iget-object v3, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->dirtyLensEvents:[Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 6828
    iget-object v3, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->dirtyLensEvents:[Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;

    aget-object v3, v3, v0

    .line 6829
    if-eqz v3, :cond_4

    .line 6830
    const/4 v4, 0x4

    .line 6831
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 6827
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    .line 6835
    :cond_6
    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->shutterButtonDisabledDuration:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    const/4 v3, 0x0

    .line 6836
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_7

    .line 6837
    const/4 v2, 0x5

    iget v3, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->shutterButtonDisabledDuration:F

    .line 8569
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    .line 6838
    add-int/2addr v0, v2

    .line 6840
    :cond_7
    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->meteringData:[Lcom/google/common/logging/nano/eventprotos$MeteringData;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->meteringData:[Lcom/google/common/logging/nano/eventprotos$MeteringData;

    array-length v2, v2

    if-lez v2, :cond_9

    .line 6841
    :goto_2
    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->meteringData:[Lcom/google/common/logging/nano/eventprotos$MeteringData;

    array-length v2, v2

    if-ge v1, v2, :cond_9

    .line 6842
    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->meteringData:[Lcom/google/common/logging/nano/eventprotos$MeteringData;

    aget-object v2, v2, v1

    .line 6843
    if-eqz v2, :cond_8

    .line 6844
    const/4 v3, 0x6

    .line 6845
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6841
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6849
    :cond_9
    return v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 6772
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->launchReport:Lcom/google/common/logging/nano/eventprotos$LaunchReport;

    if-eqz v0, :cond_0

    .line 6773
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->launchReport:Lcom/google/common/logging/nano/eventprotos$LaunchReport;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6775
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->previewSmoothnessReport:[Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->previewSmoothnessReport:[Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 6776
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->previewSmoothnessReport:[Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 6777
    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->previewSmoothnessReport:[Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;

    aget-object v2, v2, v0

    .line 6778
    if-eqz v2, :cond_1

    .line 6779
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6776
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6783
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->dirtyLensEvents:[Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->dirtyLensEvents:[Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    .line 6784
    :goto_1
    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->dirtyLensEvents:[Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 6785
    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->dirtyLensEvents:[Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;

    aget-object v2, v2, v0

    .line 6786
    if-eqz v2, :cond_3

    .line 6787
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6784
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6791
    :cond_4
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->shutterButtonDisabledDuration:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v2, 0x0

    .line 6792
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v0, v2, :cond_5

    .line 6793
    const/4 v0, 0x5

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->shutterButtonDisabledDuration:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 6795
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->meteringData:[Lcom/google/common/logging/nano/eventprotos$MeteringData;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->meteringData:[Lcom/google/common/logging/nano/eventprotos$MeteringData;

    array-length v0, v0

    if-lez v0, :cond_7

    .line 6796
    :goto_2
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->meteringData:[Lcom/google/common/logging/nano/eventprotos$MeteringData;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    .line 6797
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;->meteringData:[Lcom/google/common/logging/nano/eventprotos$MeteringData;

    aget-object v0, v0, v1

    .line 6798
    if-eqz v0, :cond_6

    .line 6799
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6796
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6803
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6804
    return-void
.end method
