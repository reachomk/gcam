.class public final Lcom/google/common/logging/nano/eventprotos$ExifMetaData;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$ExifMetaData;",
        ">;"
    }
.end annotation


# instance fields
.field public aperture:F

.field public exposureCompensation:F

.field public exposureTime:F

.field public flashValue:I

.field public flashValueExists:Z

.field public focalLength:F

.field public hasLocation:Z

.field public height:I

.field public iso:I

.field private lightValue:F

.field private make:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public orientation:I

.field public software:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3727
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4732
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->software:Ljava/lang/String;

    .line 4733
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->make:Ljava/lang/String;

    .line 4734
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->model:Ljava/lang/String;

    .line 4735
    iput v2, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->exposureTime:F

    .line 4736
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->iso:I

    .line 4737
    iput v2, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->focalLength:F

    .line 4738
    iput v2, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->aperture:F

    .line 4739
    iput v2, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->lightValue:F

    .line 4740
    iput-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->hasLocation:Z

    .line 4741
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->orientation:I

    .line 4742
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->height:I

    .line 4743
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->width:I

    .line 4744
    iput-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->flashValueExists:Z

    .line 4745
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->flashValue:I

    .line 4746
    iput v2, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->exposureCompensation:F

    .line 4747
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 4748
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->cachedSize:I

    .line 3729
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3810
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 3811
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->software:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->software:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3812
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->software:Ljava/lang/String;

    .line 3813
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3815
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->make:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->make:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3816
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->make:Ljava/lang/String;

    .line 3817
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3819
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->model:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->model:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3820
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->model:Ljava/lang/String;

    .line 3821
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3823
    :cond_2
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->exposureTime:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 3824
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 3825
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->exposureTime:F

    .line 5569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 3826
    add-int/2addr v0, v1

    .line 3828
    :cond_3
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->iso:I

    if-eqz v1, :cond_4

    .line 3829
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->iso:I

    .line 3830
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3832
    :cond_4
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->focalLength:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 3833
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_5

    .line 3834
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->focalLength:F

    .line 6569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 3835
    add-int/2addr v0, v1

    .line 3837
    :cond_5
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->aperture:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 3838
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_6

    .line 3839
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->aperture:F

    .line 7569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 3840
    add-int/2addr v0, v1

    .line 3842
    :cond_6
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 3843
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_7

    .line 3844
    const/16 v1, 0x8

    .line 8569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 3845
    add-int/2addr v0, v1

    .line 3847
    :cond_7
    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->hasLocation:Z

    if-eqz v1, :cond_8

    .line 3848
    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->hasLocation:Z

    .line 8620
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 3849
    add-int/2addr v0, v1

    .line 3851
    :cond_8
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->orientation:I

    if-eqz v1, :cond_9

    .line 3852
    const/16 v1, 0xa

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->orientation:I

    .line 3853
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3855
    :cond_9
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->height:I

    if-eqz v1, :cond_a

    .line 3856
    const/16 v1, 0xb

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->height:I

    .line 3857
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3859
    :cond_a
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->width:I

    if-eqz v1, :cond_b

    .line 3860
    const/16 v1, 0xc

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->width:I

    .line 3861
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3863
    :cond_b
    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->flashValueExists:Z

    if-eqz v1, :cond_c

    .line 3864
    const/16 v1, 0xd

    iget-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->flashValueExists:Z

    .line 9620
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 3865
    add-int/2addr v0, v1

    .line 3867
    :cond_c
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->flashValue:I

    if-eqz v1, :cond_d

    .line 3868
    const/16 v1, 0xe

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->flashValue:I

    .line 3869
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3871
    :cond_d
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->exposureCompensation:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 3872
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_e

    .line 3873
    const/16 v1, 0xf

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->exposureCompensation:F

    .line 10569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 3874
    add-int/2addr v0, v1

    .line 3876
    :cond_e
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

    .line 3755
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->software:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->software:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3756
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->software:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3758
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->make:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->make:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3759
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->make:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3761
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->model:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->model:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3762
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->model:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3764
    :cond_2
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->exposureTime:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 3765
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 3766
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->exposureTime:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3768
    :cond_3
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->iso:I

    if-eqz v0, :cond_4

    .line 3769
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->iso:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3771
    :cond_4
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->focalLength:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 3772
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 3773
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->focalLength:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3775
    :cond_5
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->aperture:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 3776
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 3777
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->aperture:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3779
    :cond_6
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 3780
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_7

    .line 3781
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3783
    :cond_7
    iget-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->hasLocation:Z

    if-eqz v0, :cond_8

    .line 3784
    const/16 v0, 0x9

    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->hasLocation:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3786
    :cond_8
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->orientation:I

    if-eqz v0, :cond_9

    .line 3787
    const/16 v0, 0xa

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->orientation:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3789
    :cond_9
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->height:I

    if-eqz v0, :cond_a

    .line 3790
    const/16 v0, 0xb

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->height:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3792
    :cond_a
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->width:I

    if-eqz v0, :cond_b

    .line 3793
    const/16 v0, 0xc

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->width:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3795
    :cond_b
    iget-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->flashValueExists:Z

    if-eqz v0, :cond_c

    .line 3796
    const/16 v0, 0xd

    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->flashValueExists:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3798
    :cond_c
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->flashValue:I

    if-eqz v0, :cond_d

    .line 3799
    const/16 v0, 0xe

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->flashValue:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3801
    :cond_d
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->exposureCompensation:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 3802
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_e

    .line 3803
    const/16 v0, 0xf

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$ExifMetaData;->exposureCompensation:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3805
    :cond_e
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3806
    return-void
.end method
