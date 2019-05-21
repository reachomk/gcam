.class public final Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;


# instance fields
.field public cameraDirection:I

.field public dirtyLensProbability:F

.field public timeNs:J

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7009
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8014
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;->timeNs:J

    .line 8015
    iput v2, p0, Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;->type:I

    .line 8016
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;->dirtyLensProbability:F

    .line 8017
    iput v2, p0, Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;->cameraDirection:I

    .line 8018
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 8019
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;->cachedSize:I

    .line 7011
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;
    .locals 2

    .prologue
    .line 6984
    sget-object v0, Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;->_emptyArray:[Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;

    if-nez v0, :cond_1

    .line 6985
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 6987
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;->_emptyArray:[Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;

    if-nez v0, :cond_0

    .line 6988
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;

    sput-object v0, Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;->_emptyArray:[Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;

    .line 6990
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6992
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;->_emptyArray:[Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;

    return-object v0

    .line 6990
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 6

    .prologue
    .line 7044
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 7045
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;->timeNs:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 7046
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;->timeNs:J

    .line 7047
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7049
    :cond_0
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;->type:I

    if-eqz v1, :cond_1

    .line 7050
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;->type:I

    .line 7051
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7053
    :cond_1
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;->dirtyLensProbability:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    const/4 v2, 0x0

    .line 7054
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 7055
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;->dirtyLensProbability:F

    .line 8569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 7056
    add-int/2addr v0, v1

    .line 7058
    :cond_2
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;->cameraDirection:I

    if-eqz v1, :cond_3

    .line 7059
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;->cameraDirection:I

    .line 7060
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7062
    :cond_3
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
    .line 7026
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;->timeNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 7027
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;->timeNs:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 7029
    :cond_0
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;->type:I

    if-eqz v0, :cond_1

    .line 7030
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7032
    :cond_1
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;->dirtyLensProbability:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v1, 0x0

    .line 7033
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 7034
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;->dirtyLensProbability:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 7036
    :cond_2
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;->cameraDirection:I

    if-eqz v0, :cond_3

    .line 7037
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$DirtyLensEvent;->cameraDirection:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7039
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 7040
    return-void
.end method
