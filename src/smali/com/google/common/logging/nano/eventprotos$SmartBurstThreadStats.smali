.class public final Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;


# instance fields
.field public frameCount:I

.field public threadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5889
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6894
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;->threadId:Ljava/lang/String;

    .line 6895
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;->frameCount:I

    .line 6896
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 6897
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;->cachedSize:I

    .line 5891
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;
    .locals 2

    .prologue
    .line 5870
    sget-object v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;->_emptyArray:[Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;

    if-nez v0, :cond_1

    .line 5871
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5873
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;->_emptyArray:[Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;

    if-nez v0, :cond_0

    .line 5874
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;

    sput-object v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;->_emptyArray:[Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;

    .line 5876
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5878
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;->_emptyArray:[Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;

    return-object v0

    .line 5876
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
    .locals 3

    .prologue
    .line 5915
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 5916
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;->threadId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;->threadId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5917
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;->threadId:Ljava/lang/String;

    .line 5918
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5920
    :cond_0
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;->frameCount:I

    if-eqz v1, :cond_1

    .line 5921
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;->frameCount:I

    .line 5922
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5924
    :cond_1
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
    .line 5904
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;->threadId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;->threadId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5905
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;->threadId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5907
    :cond_0
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;->frameCount:I

    if-eqz v0, :cond_1

    .line 5908
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;->frameCount:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5910
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5911
    return-void
.end method
