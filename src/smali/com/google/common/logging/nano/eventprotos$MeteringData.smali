.class public final Lcom/google/common/logging/nano/eventprotos$MeteringData;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$MeteringData;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/eventprotos$MeteringData;


# instance fields
.field public gcamLogSceneBrightness:F

.field public gcamMotionScore:F

.field public gcamMotionValid:Z

.field public gcamPredictedImageBrightness:F

.field public simpleBrightness:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2476
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3481
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$MeteringData;->simpleBrightness:F

    .line 3482
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$MeteringData;->gcamLogSceneBrightness:F

    .line 3483
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$MeteringData;->gcamPredictedImageBrightness:F

    .line 3484
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$MeteringData;->gcamMotionValid:Z

    .line 3485
    iput v1, p0, Lcom/google/common/logging/nano/eventprotos$MeteringData;->gcamMotionScore:F

    .line 3486
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$MeteringData;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3487
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$MeteringData;->cachedSize:I

    .line 2478
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/eventprotos$MeteringData;
    .locals 2

    .prologue
    .line 2448
    sget-object v0, Lcom/google/common/logging/nano/eventprotos$MeteringData;->_emptyArray:[Lcom/google/common/logging/nano/eventprotos$MeteringData;

    if-nez v0, :cond_1

    .line 2449
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2451
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/eventprotos$MeteringData;->_emptyArray:[Lcom/google/common/logging/nano/eventprotos$MeteringData;

    if-nez v0, :cond_0

    .line 2452
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/eventprotos$MeteringData;

    sput-object v0, Lcom/google/common/logging/nano/eventprotos$MeteringData;->_emptyArray:[Lcom/google/common/logging/nano/eventprotos$MeteringData;

    .line 2454
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2456
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/eventprotos$MeteringData;->_emptyArray:[Lcom/google/common/logging/nano/eventprotos$MeteringData;

    return-object v0

    .line 2454
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
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2518
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2519
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$MeteringData;->simpleBrightness:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 2520
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 2521
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$MeteringData;->simpleBrightness:F

    .line 3569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 2522
    add-int/2addr v0, v1

    .line 2524
    :cond_0
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$MeteringData;->gcamLogSceneBrightness:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 2525
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 2526
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$MeteringData;->gcamLogSceneBrightness:F

    .line 4569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 2527
    add-int/2addr v0, v1

    .line 2529
    :cond_1
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$MeteringData;->gcamPredictedImageBrightness:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 2530
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 2531
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$MeteringData;->gcamPredictedImageBrightness:F

    .line 5569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 2532
    add-int/2addr v0, v1

    .line 2534
    :cond_2
    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$MeteringData;->gcamMotionValid:Z

    if-eqz v1, :cond_3

    .line 2535
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$MeteringData;->gcamMotionValid:Z

    .line 5620
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 2536
    add-int/2addr v0, v1

    .line 2538
    :cond_3
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$MeteringData;->gcamMotionScore:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 2539
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 2540
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$MeteringData;->gcamMotionScore:F

    .line 6569
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 2541
    add-int/2addr v0, v1

    .line 2543
    :cond_4
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

    .line 2494
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$MeteringData;->simpleBrightness:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 2495
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2496
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$MeteringData;->simpleBrightness:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2498
    :cond_0
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$MeteringData;->gcamLogSceneBrightness:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 2499
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 2500
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$MeteringData;->gcamLogSceneBrightness:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2502
    :cond_1
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$MeteringData;->gcamPredictedImageBrightness:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 2503
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 2504
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$MeteringData;->gcamPredictedImageBrightness:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2506
    :cond_2
    iget-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$MeteringData;->gcamMotionValid:Z

    if-eqz v0, :cond_3

    .line 2507
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$MeteringData;->gcamMotionValid:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2509
    :cond_3
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$MeteringData;->gcamMotionScore:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 2510
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 2511
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$MeteringData;->gcamMotionScore:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2513
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2514
    return-void
.end method
