.class public final Lcom/google/common/logging/nano/eventprotos$MemoryReport;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$MemoryReport;",
        ">;"
    }
.end annotation


# instance fields
.field public dalvikPss:J

.field public largeMemoryClass:J

.field public memoryAvailable:J

.field public memoryClass:J

.field public memoryTotal:J

.field public nativePss:J

.field public otherPss:J

.field public reportType:Ljava/lang/String;

.field public threshold:J

.field public totalPss:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 311
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1316
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->reportType:Ljava/lang/String;

    .line 1317
    iput-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->memoryAvailable:J

    .line 1318
    iput-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->memoryTotal:J

    .line 1319
    iput-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->memoryClass:J

    .line 1320
    iput-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->largeMemoryClass:J

    .line 1321
    iput-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->totalPss:J

    .line 1322
    iput-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->nativePss:J

    .line 1323
    iput-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->dalvikPss:J

    .line 1324
    iput-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->otherPss:J

    .line 1325
    iput-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->threshold:J

    .line 1326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1327
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->cachedSize:I

    .line 313
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 369
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 370
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->reportType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->reportType:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 371
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->reportType:Ljava/lang/String;

    .line 372
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 374
    :cond_0
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->memoryAvailable:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 375
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->memoryAvailable:J

    .line 376
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 378
    :cond_1
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->memoryTotal:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 379
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->memoryTotal:J

    .line 380
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 382
    :cond_2
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->memoryClass:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 383
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->memoryClass:J

    .line 384
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 386
    :cond_3
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->largeMemoryClass:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 387
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->largeMemoryClass:J

    .line 388
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 390
    :cond_4
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->totalPss:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    .line 391
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->totalPss:J

    .line 392
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 394
    :cond_5
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->nativePss:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6

    .line 395
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->nativePss:J

    .line 396
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 398
    :cond_6
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->dalvikPss:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_7

    .line 399
    const/16 v1, 0x8

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->dalvikPss:J

    .line 400
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 402
    :cond_7
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->otherPss:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_8

    .line 403
    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->otherPss:J

    .line 404
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 406
    :cond_8
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->threshold:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_9

    .line 407
    const/16 v1, 0xa

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->threshold:J

    .line 408
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 410
    :cond_9
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

    .line 334
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->reportType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->reportType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->reportType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 337
    :cond_0
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->memoryAvailable:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 338
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->memoryAvailable:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 340
    :cond_1
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->memoryTotal:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 341
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->memoryTotal:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 343
    :cond_2
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->memoryClass:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 344
    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->memoryClass:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 346
    :cond_3
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->largeMemoryClass:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    .line 347
    const/4 v0, 0x5

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->largeMemoryClass:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 349
    :cond_4
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->totalPss:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    .line 350
    const/4 v0, 0x6

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->totalPss:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 352
    :cond_5
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->nativePss:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_6

    .line 353
    const/4 v0, 0x7

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->nativePss:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 355
    :cond_6
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->dalvikPss:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_7

    .line 356
    const/16 v0, 0x8

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->dalvikPss:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 358
    :cond_7
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->otherPss:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_8

    .line 359
    const/16 v0, 0x9

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->otherPss:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 361
    :cond_8
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->threshold:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_9

    .line 362
    const/16 v0, 0xa

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$MemoryReport;->threshold:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 364
    :cond_9
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 365
    return-void
.end method
