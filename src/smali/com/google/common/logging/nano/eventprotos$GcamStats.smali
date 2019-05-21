.class public final Lcom/google/common/logging/nano/eventprotos$GcamStats;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$GcamStats;",
        ">;"
    }
.end annotation


# instance fields
.field public actualRangeCompression:F

.field public aeConfidenceLongExposure:F

.field public aeConfidenceShortExposure:F

.field public aeConfidenceSingleExposure:F

.field public averageHeatFrac:F

.field public baseFrameIndex:I

.field public fractionOfPixelsFromLongExposure:F

.field public globalPixelShiftsX:[I

.field public globalPixelShiftsY:[I

.field public hdrWasUsed:Z

.field public idealRangeCompression:F

.field public logSceneBrightness:F

.field public longExpAdjustmentFactor:F

.field public mergedFrameCount:I

.field public meteringFrameCount:I

.field public originalPayloadFrameCount:I

.field public originalPayloadFrameSharpness:[F

.field public shortExpAdjustmentFactor:F

.field public timeToPostview:F

.field public timeToShot:F

.field public usedHexagon:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 4052
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5057
    iput-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->hdrWasUsed:Z

    .line 5058
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->aeConfidenceShortExposure:F

    .line 5059
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->aeConfidenceLongExposure:F

    .line 5060
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->aeConfidenceSingleExposure:F

    .line 5061
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->idealRangeCompression:F

    .line 5062
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->actualRangeCompression:F

    .line 5063
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->fractionOfPixelsFromLongExposure:F

    .line 5064
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->shortExpAdjustmentFactor:F

    .line 5065
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->longExpAdjustmentFactor:F

    .line 5066
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->logSceneBrightness:F

    .line 5067
    iput v2, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->meteringFrameCount:I

    .line 5068
    iput v2, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->originalPayloadFrameCount:I

    .line 5069
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->originalPayloadFrameSharpness:[F

    .line 5070
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->globalPixelShiftsX:[I

    .line 5071
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->globalPixelShiftsY:[I

    .line 5072
    iput v2, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->baseFrameIndex:I

    .line 5073
    iput v2, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->mergedFrameCount:I

    .line 5074
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->averageHeatFrac:F

    .line 5075
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->timeToShot:F

    .line 5076
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->timeToPostview:F

    .line 5077
    iput-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->usedHexagon:Z

    .line 5078
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 5079
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->cachedSize:I

    .line 4054
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 4172
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4173
    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->hdrWasUsed:Z

    if-eqz v1, :cond_0

    .line 4174
    const/4 v1, 0x1

    iget-boolean v3, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->hdrWasUsed:Z

    .line 5620
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 4175
    add-int/2addr v0, v1

    .line 4177
    :cond_0
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->aeConfidenceShortExposure:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 4178
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 4179
    const/4 v1, 0x2

    iget v3, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->aeConfidenceShortExposure:F

    .line 6569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 4180
    add-int/2addr v0, v1

    .line 4182
    :cond_1
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->aeConfidenceLongExposure:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 4183
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_2

    .line 4184
    const/4 v1, 0x3

    iget v3, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->aeConfidenceLongExposure:F

    .line 7569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 4185
    add-int/2addr v0, v1

    .line 4187
    :cond_2
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->aeConfidenceSingleExposure:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 4188
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_3

    .line 4189
    const/4 v1, 0x4

    iget v3, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->aeConfidenceSingleExposure:F

    .line 8569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 4190
    add-int/2addr v0, v1

    .line 4192
    :cond_3
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->idealRangeCompression:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 4193
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_4

    .line 4194
    const/4 v1, 0x5

    iget v3, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->idealRangeCompression:F

    .line 9569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 4195
    add-int/2addr v0, v1

    .line 4197
    :cond_4
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->actualRangeCompression:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 4198
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_5

    .line 4199
    const/4 v1, 0x6

    iget v3, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->actualRangeCompression:F

    .line 10569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 4200
    add-int/2addr v0, v1

    .line 4202
    :cond_5
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->fractionOfPixelsFromLongExposure:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 4203
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_6

    .line 4204
    const/4 v1, 0x7

    iget v3, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->fractionOfPixelsFromLongExposure:F

    .line 11569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 4205
    add-int/2addr v0, v1

    .line 4207
    :cond_6
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->shortExpAdjustmentFactor:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 4208
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_7

    .line 4209
    const/16 v1, 0x8

    iget v3, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->shortExpAdjustmentFactor:F

    .line 12569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 4210
    add-int/2addr v0, v1

    .line 4212
    :cond_7
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->longExpAdjustmentFactor:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 4213
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_8

    .line 4214
    const/16 v1, 0x9

    iget v3, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->longExpAdjustmentFactor:F

    .line 13569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 4215
    add-int/2addr v0, v1

    .line 4217
    :cond_8
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->logSceneBrightness:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 4218
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_9

    .line 4219
    const/16 v1, 0xa

    iget v3, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->logSceneBrightness:F

    .line 14569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 4220
    add-int/2addr v0, v1

    .line 4222
    :cond_9
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->meteringFrameCount:I

    if-eqz v1, :cond_a

    .line 4223
    const/16 v1, 0xc

    iget v3, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->meteringFrameCount:I

    .line 4224
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4226
    :cond_a
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->originalPayloadFrameCount:I

    if-eqz v1, :cond_b

    .line 4227
    const/16 v1, 0xd

    iget v3, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->originalPayloadFrameCount:I

    .line 4228
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4230
    :cond_b
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->originalPayloadFrameSharpness:[F

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->originalPayloadFrameSharpness:[F

    array-length v1, v1

    if-lez v1, :cond_c

    .line 4231
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->originalPayloadFrameSharpness:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    .line 4232
    add-int/2addr v0, v1

    .line 4233
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->originalPayloadFrameSharpness:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 4235
    :cond_c
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->globalPixelShiftsX:[I

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->globalPixelShiftsX:[I

    array-length v1, v1

    if-lez v1, :cond_e

    move v1, v2

    move v3, v2

    .line 4237
    :goto_0
    iget-object v4, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->globalPixelShiftsX:[I

    array-length v4, v4

    if-ge v1, v4, :cond_d

    .line 4238
    iget-object v4, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->globalPixelShiftsX:[I

    aget v4, v4, v1

    .line 4240
    invoke-static {v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 4237
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4242
    :cond_d
    add-int/2addr v0, v3

    .line 4243
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->globalPixelShiftsX:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 4245
    :cond_e
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->globalPixelShiftsY:[I

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->globalPixelShiftsY:[I

    array-length v1, v1

    if-lez v1, :cond_10

    move v1, v2

    .line 4247
    :goto_1
    iget-object v3, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->globalPixelShiftsY:[I

    array-length v3, v3

    if-ge v2, v3, :cond_f

    .line 4248
    iget-object v3, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->globalPixelShiftsY:[I

    aget v3, v3, v2

    .line 4250
    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 4247
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4252
    :cond_f
    add-int/2addr v0, v1

    .line 4253
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->globalPixelShiftsY:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 4255
    :cond_10
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->baseFrameIndex:I

    if-eqz v1, :cond_11

    .line 4256
    const/16 v1, 0x11

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->baseFrameIndex:I

    .line 4257
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4259
    :cond_11
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->mergedFrameCount:I

    if-eqz v1, :cond_12

    .line 4260
    const/16 v1, 0x12

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->mergedFrameCount:I

    .line 4261
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4263
    :cond_12
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->averageHeatFrac:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 4264
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_13

    .line 4265
    const/16 v1, 0x13

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->averageHeatFrac:F

    .line 15569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 4266
    add-int/2addr v0, v1

    .line 4268
    :cond_13
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->timeToShot:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 4269
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_14

    .line 4270
    const/16 v1, 0x14

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->timeToShot:F

    .line 16569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 4271
    add-int/2addr v0, v1

    .line 4273
    :cond_14
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->timeToPostview:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 4274
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_15

    .line 4275
    const/16 v1, 0x15

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->timeToPostview:F

    .line 17569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 4276
    add-int/2addr v0, v1

    .line 4278
    :cond_15
    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->usedHexagon:Z

    if-eqz v1, :cond_16

    .line 4279
    const/16 v1, 0x16

    iget-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->usedHexagon:Z

    .line 17620
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 4280
    add-int/2addr v0, v1

    .line 4282
    :cond_16
    return v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 4086
    iget-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->hdrWasUsed:Z

    if-eqz v0, :cond_0

    .line 4087
    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->hdrWasUsed:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4089
    :cond_0
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->aeConfidenceShortExposure:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 4090
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 4091
    const/4 v0, 0x2

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->aeConfidenceShortExposure:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4093
    :cond_1
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->aeConfidenceLongExposure:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 4094
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 4095
    const/4 v0, 0x3

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->aeConfidenceLongExposure:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4097
    :cond_2
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->aeConfidenceSingleExposure:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 4098
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 4099
    const/4 v0, 0x4

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->aeConfidenceSingleExposure:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4101
    :cond_3
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->idealRangeCompression:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 4102
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v0, v2, :cond_4

    .line 4103
    const/4 v0, 0x5

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->idealRangeCompression:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4105
    :cond_4
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->actualRangeCompression:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 4106
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v0, v2, :cond_5

    .line 4107
    const/4 v0, 0x6

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->actualRangeCompression:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4109
    :cond_5
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->fractionOfPixelsFromLongExposure:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 4110
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v0, v2, :cond_6

    .line 4111
    const/4 v0, 0x7

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->fractionOfPixelsFromLongExposure:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4113
    :cond_6
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->shortExpAdjustmentFactor:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 4114
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v0, v2, :cond_7

    .line 4115
    const/16 v0, 0x8

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->shortExpAdjustmentFactor:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4117
    :cond_7
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->longExpAdjustmentFactor:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 4118
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v0, v2, :cond_8

    .line 4119
    const/16 v0, 0x9

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->longExpAdjustmentFactor:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4121
    :cond_8
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->logSceneBrightness:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 4122
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v0, v2, :cond_9

    .line 4123
    const/16 v0, 0xa

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->logSceneBrightness:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4125
    :cond_9
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->meteringFrameCount:I

    if-eqz v0, :cond_a

    .line 4126
    const/16 v0, 0xc

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->meteringFrameCount:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4128
    :cond_a
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->originalPayloadFrameCount:I

    if-eqz v0, :cond_b

    .line 4129
    const/16 v0, 0xd

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->originalPayloadFrameCount:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4131
    :cond_b
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->originalPayloadFrameSharpness:[F

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->originalPayloadFrameSharpness:[F

    array-length v0, v0

    if-lez v0, :cond_c

    move v0, v1

    .line 4132
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->originalPayloadFrameSharpness:[F

    array-length v2, v2

    if-ge v0, v2, :cond_c

    .line 4133
    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->originalPayloadFrameSharpness:[F

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4136
    :cond_c
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->globalPixelShiftsX:[I

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->globalPixelShiftsX:[I

    array-length v0, v0

    if-lez v0, :cond_d

    move v0, v1

    .line 4137
    :goto_1
    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->globalPixelShiftsX:[I

    array-length v2, v2

    if-ge v0, v2, :cond_d

    .line 4138
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->globalPixelShiftsX:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4137
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4141
    :cond_d
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->globalPixelShiftsY:[I

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->globalPixelShiftsY:[I

    array-length v0, v0

    if-lez v0, :cond_e

    .line 4142
    :goto_2
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->globalPixelShiftsY:[I

    array-length v0, v0

    if-ge v1, v0, :cond_e

    .line 4143
    const/16 v0, 0x10

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->globalPixelShiftsY:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4142
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4146
    :cond_e
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->baseFrameIndex:I

    if-eqz v0, :cond_f

    .line 4147
    const/16 v0, 0x11

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->baseFrameIndex:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4149
    :cond_f
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->mergedFrameCount:I

    if-eqz v0, :cond_10

    .line 4150
    const/16 v0, 0x12

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->mergedFrameCount:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4152
    :cond_10
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->averageHeatFrac:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 4153
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_11

    .line 4154
    const/16 v0, 0x13

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->averageHeatFrac:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4156
    :cond_11
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->timeToShot:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 4157
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_12

    .line 4158
    const/16 v0, 0x14

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->timeToShot:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4160
    :cond_12
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->timeToPostview:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 4161
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_13

    .line 4162
    const/16 v0, 0x15

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->timeToPostview:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4164
    :cond_13
    iget-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->usedHexagon:Z

    if-eqz v0, :cond_14

    .line 4165
    const/16 v0, 0x16

    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$GcamStats;->usedHexagon:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4167
    :cond_14
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4168
    return-void
.end method
