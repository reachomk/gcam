.class public final Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;


# instance fields
.field public artifactType:I

.field public mediaCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5440
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6445
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;->artifactType:I

    .line 6446
    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;->mediaCount:I

    .line 6447
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 6448
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;->cachedSize:I

    .line 5442
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;
    .locals 2

    .prologue
    .line 5421
    sget-object v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;->_emptyArray:[Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;

    if-nez v0, :cond_1

    .line 5422
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5424
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;->_emptyArray:[Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;

    if-nez v0, :cond_0

    .line 5425
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;

    sput-object v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;->_emptyArray:[Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;

    .line 5427
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5429
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;->_emptyArray:[Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;

    return-object v0

    .line 5427
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
    .line 5466
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 5467
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;->artifactType:I

    if-eqz v1, :cond_0

    .line 5468
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;->artifactType:I

    .line 5469
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5471
    :cond_0
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;->mediaCount:I

    if-eqz v1, :cond_1

    .line 5472
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;->mediaCount:I

    .line 5473
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5475
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
    .line 5455
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;->artifactType:I

    if-eqz v0, :cond_0

    .line 5456
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;->artifactType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5458
    :cond_0
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;->mediaCount:I

    if-eqz v0, :cond_1

    .line 5459
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;->mediaCount:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5461
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5462
    return-void
.end method
