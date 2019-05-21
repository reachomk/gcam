.class public final Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;


# instance fields
.field public endNs:J

.field public startNs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 9101
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 10106
    iput-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;->startNs:J

    .line 10107
    iput-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;->endNs:J

    .line 10108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 10109
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;->cachedSize:I

    .line 9103
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;
    .locals 2

    .prologue
    .line 9082
    sget-object v0, Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;->_emptyArray:[Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;

    if-nez v0, :cond_1

    .line 9083
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 9085
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;->_emptyArray:[Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;

    if-nez v0, :cond_0

    .line 9086
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;

    sput-object v0, Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;->_emptyArray:[Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;

    .line 9088
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9090
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;->_emptyArray:[Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;

    return-object v0

    .line 9088
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
    const-wide/16 v4, 0x0

    .line 9127
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 9128
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;->startNs:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 9129
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;->startNs:J

    .line 9130
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9132
    :cond_0
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;->endNs:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 9133
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;->endNs:J

    .line 9134
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9136
    :cond_1
    return v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 9116
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;->startNs:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 9117
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;->startNs:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 9119
    :cond_0
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;->endNs:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 9120
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;->endNs:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 9122
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 9123
    return-void
.end method
