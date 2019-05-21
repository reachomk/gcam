.class public final Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;


# instance fields
.field public badFrames:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

.field private captureFrames:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

.field public delay150PctCount:I

.field public delay500PctCount:I

.field public delay50PctCount:I

.field public firstFrame:Lcom/google/common/logging/nano/eventprotos$FrameInfo;

.field public lastFrame:Lcom/google/common/logging/nano/eventprotos$FrameInfo;

.field private runMode:I

.field public startupFrames:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 9364
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 10369
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->runMode:I

    .line 10370
    iput-object v2, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->firstFrame:Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    .line 10371
    iput-object v2, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->lastFrame:Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    .line 10372
    invoke-static {}, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->emptyArray()[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->startupFrames:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    .line 10373
    invoke-static {}, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->emptyArray()[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->captureFrames:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    .line 10374
    invoke-static {}, Lcom/google/common/logging/nano/eventprotos$FrameInfo;->emptyArray()[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->badFrames:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    .line 10375
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->delay50PctCount:I

    .line 10376
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->delay150PctCount:I

    .line 10377
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->delay500PctCount:I

    .line 10378
    iput-object v2, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 10379
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->cachedSize:I

    .line 9366
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;
    .locals 2

    .prologue
    .line 9324
    sget-object v0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->_emptyArray:[Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;

    if-nez v0, :cond_1

    .line 9325
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 9327
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->_emptyArray:[Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;

    if-nez v0, :cond_0

    .line 9328
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;

    sput-object v0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->_emptyArray:[Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;

    .line 9330
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9332
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->_emptyArray:[Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;

    return-object v0

    .line 9330
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
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 9433
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 9438
    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->firstFrame:Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    if-eqz v2, :cond_0

    .line 9439
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->firstFrame:Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    .line 9440
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9442
    :cond_0
    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->lastFrame:Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    if-eqz v2, :cond_1

    .line 9443
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->lastFrame:Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    .line 9444
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9446
    :cond_1
    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->startupFrames:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->startupFrames:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v0

    move v0, v1

    .line 9447
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->startupFrames:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 9448
    iget-object v3, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->startupFrames:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    aget-object v3, v3, v0

    .line 9449
    if-eqz v3, :cond_2

    .line 9450
    const/16 v4, 0xa

    .line 9451
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 9447
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 9455
    :cond_4
    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->captureFrames:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->captureFrames:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    array-length v2, v2

    if-lez v2, :cond_7

    move v2, v0

    move v0, v1

    .line 9456
    :goto_1
    iget-object v3, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->captureFrames:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    array-length v3, v3

    if-ge v0, v3, :cond_6

    .line 9457
    iget-object v3, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->captureFrames:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    aget-object v3, v3, v0

    .line 9458
    if-eqz v3, :cond_5

    .line 9459
    const/16 v4, 0xb

    .line 9460
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 9456
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move v0, v2

    .line 9464
    :cond_7
    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->badFrames:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->badFrames:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    array-length v2, v2

    if-lez v2, :cond_9

    .line 9465
    :goto_2
    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->badFrames:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_9

    .line 9466
    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->badFrames:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    aget-object v2, v2, v1

    .line 9467
    if-eqz v2, :cond_8

    .line 9468
    const/16 v3, 0xc

    .line 9469
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9465
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 9473
    :cond_9
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->delay50PctCount:I

    if-eqz v1, :cond_a

    .line 9474
    const/16 v1, 0x16

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->delay50PctCount:I

    .line 9475
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9477
    :cond_a
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->delay150PctCount:I

    if-eqz v1, :cond_b

    .line 9478
    const/16 v1, 0x17

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->delay150PctCount:I

    .line 9479
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9481
    :cond_b
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->delay500PctCount:I

    if-eqz v1, :cond_c

    .line 9482
    const/16 v1, 0x18

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->delay500PctCount:I

    .line 9483
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9485
    :cond_c
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

    .line 9389
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->firstFrame:Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    if-eqz v0, :cond_0

    .line 9390
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->firstFrame:Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 9392
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->lastFrame:Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    if-eqz v0, :cond_1

    .line 9393
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->lastFrame:Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 9395
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->startupFrames:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->startupFrames:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 9396
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->startupFrames:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 9397
    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->startupFrames:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    aget-object v2, v2, v0

    .line 9398
    if-eqz v2, :cond_2

    .line 9399
    const/16 v3, 0xa

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 9396
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9403
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->captureFrames:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->captureFrames:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    .line 9404
    :goto_1
    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->captureFrames:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 9405
    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->captureFrames:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    aget-object v2, v2, v0

    .line 9406
    if-eqz v2, :cond_4

    .line 9407
    const/16 v3, 0xb

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 9404
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9411
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->badFrames:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->badFrames:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    array-length v0, v0

    if-lez v0, :cond_7

    .line 9412
    :goto_2
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->badFrames:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    .line 9413
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->badFrames:[Lcom/google/common/logging/nano/eventprotos$FrameInfo;

    aget-object v0, v0, v1

    .line 9414
    if-eqz v0, :cond_6

    .line 9415
    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 9412
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 9419
    :cond_7
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->delay50PctCount:I

    if-eqz v0, :cond_8

    .line 9420
    const/16 v0, 0x16

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->delay50PctCount:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9422
    :cond_8
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->delay150PctCount:I

    if-eqz v0, :cond_9

    .line 9423
    const/16 v0, 0x17

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->delay150PctCount:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9425
    :cond_9
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->delay500PctCount:I

    if-eqz v0, :cond_a

    .line 9426
    const/16 v0, 0x18

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$PreviewSmoothnessReport;->delay500PctCount:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9428
    :cond_a
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 9429
    return-void
.end method
