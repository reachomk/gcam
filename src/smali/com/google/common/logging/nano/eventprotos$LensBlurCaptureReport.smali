.class public final Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;",
        ">;"
    }
.end annotation


# instance fields
.field private elapsedTime:F

.field public hasLowLightWarning:Z

.field public hasMotionTooFastWarning:Z

.field public hasViewportWarning:Z

.field public motionTooFastError:Z

.field public motionTooSlowError:Z

.field private numBadFrames:I

.field private numFrames:I

.field private quality:I

.field public sceneError:Z

.field public trackingFailedError:Z

.field public userCanceled:Z

.field public viewportError:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1071
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2076
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->numFrames:I

    .line 2077
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->numBadFrames:I

    .line 2078
    iput-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->motionTooFastError:Z

    .line 2079
    iput-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->motionTooSlowError:Z

    .line 2080
    iput-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->trackingFailedError:Z

    .line 2081
    iput-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->viewportError:Z

    .line 2082
    iput-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->sceneError:Z

    .line 2083
    iput-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->userCanceled:Z

    .line 2084
    iput-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->hasViewportWarning:Z

    .line 2085
    iput-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->hasMotionTooFastWarning:Z

    .line 2086
    iput-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->hasLowLightWarning:Z

    .line 2087
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->elapsedTime:F

    .line 2088
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->quality:I

    .line 2089
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 2090
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->cachedSize:I

    .line 1073
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1142
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1151
    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->motionTooFastError:Z

    if-eqz v1, :cond_0

    .line 1152
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->motionTooFastError:Z

    .line 2620
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1153
    add-int/2addr v0, v1

    .line 1155
    :cond_0
    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->motionTooSlowError:Z

    if-eqz v1, :cond_1

    .line 1156
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->motionTooSlowError:Z

    .line 3620
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1157
    add-int/2addr v0, v1

    .line 1159
    :cond_1
    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->trackingFailedError:Z

    if-eqz v1, :cond_2

    .line 1160
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->trackingFailedError:Z

    .line 4620
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1161
    add-int/2addr v0, v1

    .line 1163
    :cond_2
    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->viewportError:Z

    if-eqz v1, :cond_3

    .line 1164
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->viewportError:Z

    .line 5620
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1165
    add-int/2addr v0, v1

    .line 1167
    :cond_3
    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->sceneError:Z

    if-eqz v1, :cond_4

    .line 1168
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->sceneError:Z

    .line 6620
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1169
    add-int/2addr v0, v1

    .line 1171
    :cond_4
    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->userCanceled:Z

    if-eqz v1, :cond_5

    .line 1172
    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->userCanceled:Z

    .line 7620
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1173
    add-int/2addr v0, v1

    .line 1175
    :cond_5
    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->hasViewportWarning:Z

    if-eqz v1, :cond_6

    .line 1176
    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->hasViewportWarning:Z

    .line 8620
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1177
    add-int/2addr v0, v1

    .line 1179
    :cond_6
    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->hasMotionTooFastWarning:Z

    if-eqz v1, :cond_7

    .line 1180
    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->hasMotionTooFastWarning:Z

    .line 9620
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1181
    add-int/2addr v0, v1

    .line 1183
    :cond_7
    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->hasLowLightWarning:Z

    if-eqz v1, :cond_8

    .line 1184
    const/16 v1, 0xb

    iget-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->hasLowLightWarning:Z

    .line 10620
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1185
    add-int/2addr v0, v1

    .line 1187
    :cond_8
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1188
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_9

    .line 1189
    const/16 v1, 0xc

    .line 11569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 1190
    add-int/2addr v0, v1

    .line 1196
    :cond_9
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

    .line 1103
    iget-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->motionTooFastError:Z

    if-eqz v0, :cond_0

    .line 1104
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->motionTooFastError:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1106
    :cond_0
    iget-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->motionTooSlowError:Z

    if-eqz v0, :cond_1

    .line 1107
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->motionTooSlowError:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1109
    :cond_1
    iget-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->trackingFailedError:Z

    if-eqz v0, :cond_2

    .line 1110
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->trackingFailedError:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1112
    :cond_2
    iget-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->viewportError:Z

    if-eqz v0, :cond_3

    .line 1113
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->viewportError:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1115
    :cond_3
    iget-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->sceneError:Z

    if-eqz v0, :cond_4

    .line 1116
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->sceneError:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1118
    :cond_4
    iget-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->userCanceled:Z

    if-eqz v0, :cond_5

    .line 1119
    const/16 v0, 0x8

    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->userCanceled:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1121
    :cond_5
    iget-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->hasViewportWarning:Z

    if-eqz v0, :cond_6

    .line 1122
    const/16 v0, 0x9

    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->hasViewportWarning:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1124
    :cond_6
    iget-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->hasMotionTooFastWarning:Z

    if-eqz v0, :cond_7

    .line 1125
    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->hasMotionTooFastWarning:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1127
    :cond_7
    iget-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->hasLowLightWarning:Z

    if-eqz v0, :cond_8

    .line 1128
    const/16 v0, 0xb

    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$LensBlurCaptureReport;->hasLowLightWarning:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1130
    :cond_8
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 1131
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_9

    .line 1132
    const/16 v0, 0xc

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1137
    :cond_9
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1138
    return-void
.end method
