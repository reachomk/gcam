.class public final Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;",
        ">;"
    }
.end annotation


# instance fields
.field public buttonHoldDurationMs:F

.field public logSequenceError:Z

.field private startFailedAlreadyRunning:Z

.field public startFailedInsufficientBuffers:Z

.field public startFailedInvalidState:Z

.field public startFailedWithException:Z

.field public startSucceeded:Z

.field public stopSucceeded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1333
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2338
    iput-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->startSucceeded:Z

    .line 2339
    iput-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->startFailedAlreadyRunning:Z

    .line 2340
    iput-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->startFailedInsufficientBuffers:Z

    .line 2341
    iput-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->startFailedInvalidState:Z

    .line 2342
    iput-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->startFailedWithException:Z

    .line 2343
    iput-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->stopSucceeded:Z

    .line 2344
    iput-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->logSequenceError:Z

    .line 2345
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->buttonHoldDurationMs:F

    .line 2346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 2347
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->cachedSize:I

    .line 1335
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 1384
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1385
    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->startSucceeded:Z

    if-eqz v1, :cond_0

    .line 1386
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->startSucceeded:Z

    .line 2620
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1387
    add-int/2addr v0, v1

    .line 1393
    :cond_0
    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->startFailedInsufficientBuffers:Z

    if-eqz v1, :cond_1

    .line 1394
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->startFailedInsufficientBuffers:Z

    .line 3620
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1395
    add-int/2addr v0, v1

    .line 1397
    :cond_1
    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->startFailedInvalidState:Z

    if-eqz v1, :cond_2

    .line 1398
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->startFailedInvalidState:Z

    .line 4620
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1399
    add-int/2addr v0, v1

    .line 1401
    :cond_2
    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->startFailedWithException:Z

    if-eqz v1, :cond_3

    .line 1402
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->startFailedWithException:Z

    .line 5620
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1403
    add-int/2addr v0, v1

    .line 1405
    :cond_3
    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->stopSucceeded:Z

    if-eqz v1, :cond_4

    .line 1406
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->stopSucceeded:Z

    .line 6620
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1407
    add-int/2addr v0, v1

    .line 1409
    :cond_4
    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->logSequenceError:Z

    if-eqz v1, :cond_5

    .line 1410
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->logSequenceError:Z

    .line 7620
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1411
    add-int/2addr v0, v1

    .line 1413
    :cond_5
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->buttonHoldDurationMs:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    const/4 v2, 0x0

    .line 1414
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_6

    .line 1415
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->buttonHoldDurationMs:F

    .line 8569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 1416
    add-int/2addr v0, v1

    .line 1418
    :cond_6
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
    .line 1354
    iget-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->startSucceeded:Z

    if-eqz v0, :cond_0

    .line 1355
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->startSucceeded:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1360
    :cond_0
    iget-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->startFailedInsufficientBuffers:Z

    if-eqz v0, :cond_1

    .line 1361
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->startFailedInsufficientBuffers:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1363
    :cond_1
    iget-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->startFailedInvalidState:Z

    if-eqz v0, :cond_2

    .line 1364
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->startFailedInvalidState:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1366
    :cond_2
    iget-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->startFailedWithException:Z

    if-eqz v0, :cond_3

    .line 1367
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->startFailedWithException:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1369
    :cond_3
    iget-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->stopSucceeded:Z

    if-eqz v0, :cond_4

    .line 1370
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->stopSucceeded:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1372
    :cond_4
    iget-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->logSequenceError:Z

    if-eqz v0, :cond_5

    .line 1373
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->logSequenceError:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1375
    :cond_5
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->buttonHoldDurationMs:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v1, 0x0

    .line 1376
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 1377
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureReport;->buttonHoldDurationMs:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1379
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1380
    return-void
.end method
