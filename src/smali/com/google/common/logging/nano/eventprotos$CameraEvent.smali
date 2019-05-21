.class public final Lcom/google/common/logging/nano/eventprotos$CameraEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/eventprotos$CameraEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public backgroundEvent:Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;

.field public blockShotEvent:Lcom/google/common/logging/nano/eventprotos$BlockShotEvent;

.field public buildSource:I

.field public cameraFailure:Lcom/google/common/logging/nano/eventprotos$CameraFailure;

.field public cameraPrewarmEvent:Lcom/google/common/logging/nano/eventprotos$CameraPrewarmEvent;

.field public captureComputeEvent:Lcom/google/common/logging/nano/eventprotos$CaptureCompute;

.field public captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

.field public captureProfileAbortedEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;

.field public captureProfileEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileEvent;

.field public captureProfileFailedEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;

.field public captureProfileStartCommittedEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;

.field public captureProfileStartEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartEvent;

.field public changeCameraEvent:Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;

.field public clientFirstUseMillis:J

.field public controlEvent:Lcom/google/common/logging/nano/eventprotos$ControlEvent;

.field public counter:I

.field public eventType:I

.field public foregroundEvent:Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;

.field private googler:Z

.field public interaction:Lcom/google/common/logging/nano/eventprotos$MediaInteraction;

.field public isTestDevice:Z

.field public memoryReport:Lcom/google/common/logging/nano/eventprotos$MemoryReport;

.field private memoryWindowStats:Lcom/google/common/logging/nano/eventprotos$MemoryWindowStats;

.field public navigationChange:Lcom/google/common/logging/nano/eventprotos$NavigationChange;

.field public openDeviceRetryEvent:Lcom/google/common/logging/nano/eventprotos$OpenDeviceRetryEvent;

.field public runId:I

.field public sessionId:J

.field public storageWarning:Lcom/google/common/logging/nano/eventprotos$StorageWarning;

.field public timezone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 10476
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 11481
    iput v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->eventType:I

    .line 11482
    iput-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->googler:Z

    .line 11483
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->timezone:Ljava/lang/String;

    .line 11484
    iput-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->navigationChange:Lcom/google/common/logging/nano/eventprotos$NavigationChange;

    .line 11485
    iput-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    .line 11486
    iput-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->interaction:Lcom/google/common/logging/nano/eventprotos$MediaInteraction;

    .line 11487
    iput-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->foregroundEvent:Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;

    .line 11488
    iput-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->cameraFailure:Lcom/google/common/logging/nano/eventprotos$CameraFailure;

    .line 11489
    iput-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->controlEvent:Lcom/google/common/logging/nano/eventprotos$ControlEvent;

    .line 11490
    iput-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureComputeEvent:Lcom/google/common/logging/nano/eventprotos$CaptureCompute;

    .line 11491
    iput-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->memoryReport:Lcom/google/common/logging/nano/eventprotos$MemoryReport;

    .line 11492
    iput-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->memoryWindowStats:Lcom/google/common/logging/nano/eventprotos$MemoryWindowStats;

    .line 11493
    iput-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->storageWarning:Lcom/google/common/logging/nano/eventprotos$StorageWarning;

    .line 11494
    iput-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->backgroundEvent:Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;

    .line 11495
    iput-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileStartEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartEvent;

    .line 11496
    iput-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileEvent;

    .line 11497
    iput-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileAbortedEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;

    .line 11498
    iput-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->cameraPrewarmEvent:Lcom/google/common/logging/nano/eventprotos$CameraPrewarmEvent;

    .line 11499
    iput-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->openDeviceRetryEvent:Lcom/google/common/logging/nano/eventprotos$OpenDeviceRetryEvent;

    .line 11500
    iput-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->changeCameraEvent:Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;

    .line 11501
    iput-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->blockShotEvent:Lcom/google/common/logging/nano/eventprotos$BlockShotEvent;

    .line 11502
    iput-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileFailedEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;

    .line 11503
    iput-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileStartCommittedEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;

    .line 11504
    iput-wide v4, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->clientFirstUseMillis:J

    .line 11505
    iput v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->runId:I

    .line 11506
    iput v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->counter:I

    .line 11507
    iput-wide v4, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->sessionId:J

    .line 11508
    iput v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->buildSource:I

    .line 11509
    iput-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->isTestDevice:Z

    .line 11510
    iput-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 11511
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->cachedSize:I

    .line 10478
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 10610
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 10611
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->eventType:I

    if-eqz v1, :cond_0

    .line 10612
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->eventType:I

    .line 10613
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10619
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->timezone:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->timezone:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 10620
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->timezone:Ljava/lang/String;

    .line 10621
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10623
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->navigationChange:Lcom/google/common/logging/nano/eventprotos$NavigationChange;

    if-eqz v1, :cond_2

    .line 10624
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->navigationChange:Lcom/google/common/logging/nano/eventprotos$NavigationChange;

    .line 10625
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10627
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    if-eqz v1, :cond_3

    .line 10628
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    .line 10629
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10631
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->interaction:Lcom/google/common/logging/nano/eventprotos$MediaInteraction;

    if-eqz v1, :cond_4

    .line 10632
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->interaction:Lcom/google/common/logging/nano/eventprotos$MediaInteraction;

    .line 10633
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10635
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->foregroundEvent:Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;

    if-eqz v1, :cond_5

    .line 10636
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->foregroundEvent:Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;

    .line 10637
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10639
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->cameraFailure:Lcom/google/common/logging/nano/eventprotos$CameraFailure;

    if-eqz v1, :cond_6

    .line 10640
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->cameraFailure:Lcom/google/common/logging/nano/eventprotos$CameraFailure;

    .line 10641
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10643
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->controlEvent:Lcom/google/common/logging/nano/eventprotos$ControlEvent;

    if-eqz v1, :cond_7

    .line 10644
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->controlEvent:Lcom/google/common/logging/nano/eventprotos$ControlEvent;

    .line 10645
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10647
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureComputeEvent:Lcom/google/common/logging/nano/eventprotos$CaptureCompute;

    if-eqz v1, :cond_8

    .line 10648
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureComputeEvent:Lcom/google/common/logging/nano/eventprotos$CaptureCompute;

    .line 10649
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10651
    :cond_8
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->memoryReport:Lcom/google/common/logging/nano/eventprotos$MemoryReport;

    if-eqz v1, :cond_9

    .line 10652
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->memoryReport:Lcom/google/common/logging/nano/eventprotos$MemoryReport;

    .line 10653
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10659
    :cond_9
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->storageWarning:Lcom/google/common/logging/nano/eventprotos$StorageWarning;

    if-eqz v1, :cond_a

    .line 10660
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->storageWarning:Lcom/google/common/logging/nano/eventprotos$StorageWarning;

    .line 10661
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10663
    :cond_a
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->backgroundEvent:Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;

    if-eqz v1, :cond_b

    .line 10664
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->backgroundEvent:Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;

    .line 10665
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10667
    :cond_b
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileStartEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartEvent;

    if-eqz v1, :cond_c

    .line 10668
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileStartEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartEvent;

    .line 10669
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10671
    :cond_c
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileEvent;

    if-eqz v1, :cond_d

    .line 10672
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileEvent;

    .line 10673
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10675
    :cond_d
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileAbortedEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;

    if-eqz v1, :cond_e

    .line 10676
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileAbortedEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;

    .line 10677
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10679
    :cond_e
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->cameraPrewarmEvent:Lcom/google/common/logging/nano/eventprotos$CameraPrewarmEvent;

    if-eqz v1, :cond_f

    .line 10680
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->cameraPrewarmEvent:Lcom/google/common/logging/nano/eventprotos$CameraPrewarmEvent;

    .line 10681
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10683
    :cond_f
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->openDeviceRetryEvent:Lcom/google/common/logging/nano/eventprotos$OpenDeviceRetryEvent;

    if-eqz v1, :cond_10

    .line 10684
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->openDeviceRetryEvent:Lcom/google/common/logging/nano/eventprotos$OpenDeviceRetryEvent;

    .line 10685
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10687
    :cond_10
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->changeCameraEvent:Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;

    if-eqz v1, :cond_11

    .line 10688
    const/16 v1, 0x17

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->changeCameraEvent:Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;

    .line 10689
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10691
    :cond_11
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->blockShotEvent:Lcom/google/common/logging/nano/eventprotos$BlockShotEvent;

    if-eqz v1, :cond_12

    .line 10692
    const/16 v1, 0x18

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->blockShotEvent:Lcom/google/common/logging/nano/eventprotos$BlockShotEvent;

    .line 10693
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10695
    :cond_12
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileFailedEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;

    if-eqz v1, :cond_13

    .line 10696
    const/16 v1, 0x19

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileFailedEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;

    .line 10697
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10699
    :cond_13
    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileStartCommittedEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;

    if-eqz v1, :cond_14

    .line 10700
    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileStartCommittedEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;

    .line 10701
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10703
    :cond_14
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->clientFirstUseMillis:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_15

    .line 10704
    const/16 v1, 0x1e

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->clientFirstUseMillis:J

    .line 10705
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10707
    :cond_15
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->runId:I

    if-eqz v1, :cond_16

    .line 10708
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->runId:I

    .line 13611
    const/16 v1, 0x1f

    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 10709
    add-int/2addr v0, v1

    .line 10711
    :cond_16
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->counter:I

    if-eqz v1, :cond_17

    .line 10712
    const/16 v1, 0x20

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->counter:I

    .line 10713
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10715
    :cond_17
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->sessionId:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_18

    .line 10716
    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->sessionId:J

    .line 14602
    const/16 v1, 0x21

    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 10717
    add-int/2addr v0, v1

    .line 10719
    :cond_18
    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->buildSource:I

    if-eqz v1, :cond_19

    .line 10720
    const/16 v1, 0x22

    iget v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->buildSource:I

    .line 10721
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10723
    :cond_19
    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->isTestDevice:Z

    if-eqz v1, :cond_1a

    .line 10724
    const/16 v1, 0x23

    iget-boolean v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->isTestDevice:Z

    .line 14620
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 10725
    add-int/2addr v0, v1

    .line 10727
    :cond_1a
    return v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    .line 10518
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->eventType:I

    if-eqz v0, :cond_0

    .line 10519
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->eventType:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10524
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->timezone:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->timezone:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10525
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->timezone:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10527
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->navigationChange:Lcom/google/common/logging/nano/eventprotos$NavigationChange;

    if-eqz v0, :cond_2

    .line 10528
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->navigationChange:Lcom/google/common/logging/nano/eventprotos$NavigationChange;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 10530
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    if-eqz v0, :cond_3

    .line 10531
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureDoneEvent:Lcom/google/common/logging/nano/eventprotos$CaptureDone;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 10533
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->interaction:Lcom/google/common/logging/nano/eventprotos$MediaInteraction;

    if-eqz v0, :cond_4

    .line 10534
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->interaction:Lcom/google/common/logging/nano/eventprotos$MediaInteraction;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 10536
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->foregroundEvent:Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;

    if-eqz v0, :cond_5

    .line 10537
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->foregroundEvent:Lcom/google/common/logging/nano/eventprotos$ForegroundEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 10539
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->cameraFailure:Lcom/google/common/logging/nano/eventprotos$CameraFailure;

    if-eqz v0, :cond_6

    .line 10540
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->cameraFailure:Lcom/google/common/logging/nano/eventprotos$CameraFailure;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 10542
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->controlEvent:Lcom/google/common/logging/nano/eventprotos$ControlEvent;

    if-eqz v0, :cond_7

    .line 10543
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->controlEvent:Lcom/google/common/logging/nano/eventprotos$ControlEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 10545
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureComputeEvent:Lcom/google/common/logging/nano/eventprotos$CaptureCompute;

    if-eqz v0, :cond_8

    .line 10546
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureComputeEvent:Lcom/google/common/logging/nano/eventprotos$CaptureCompute;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 10548
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->memoryReport:Lcom/google/common/logging/nano/eventprotos$MemoryReport;

    if-eqz v0, :cond_9

    .line 10549
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->memoryReport:Lcom/google/common/logging/nano/eventprotos$MemoryReport;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 10554
    :cond_9
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->storageWarning:Lcom/google/common/logging/nano/eventprotos$StorageWarning;

    if-eqz v0, :cond_a

    .line 10555
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->storageWarning:Lcom/google/common/logging/nano/eventprotos$StorageWarning;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 10557
    :cond_a
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->backgroundEvent:Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;

    if-eqz v0, :cond_b

    .line 10558
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->backgroundEvent:Lcom/google/common/logging/nano/eventprotos$BackgroundEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 10560
    :cond_b
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileStartEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartEvent;

    if-eqz v0, :cond_c

    .line 10561
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileStartEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 10563
    :cond_c
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileEvent;

    if-eqz v0, :cond_d

    .line 10564
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 10566
    :cond_d
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileAbortedEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;

    if-eqz v0, :cond_e

    .line 10567
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileAbortedEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileAbortedEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 10569
    :cond_e
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->cameraPrewarmEvent:Lcom/google/common/logging/nano/eventprotos$CameraPrewarmEvent;

    if-eqz v0, :cond_f

    .line 10570
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->cameraPrewarmEvent:Lcom/google/common/logging/nano/eventprotos$CameraPrewarmEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 10572
    :cond_f
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->openDeviceRetryEvent:Lcom/google/common/logging/nano/eventprotos$OpenDeviceRetryEvent;

    if-eqz v0, :cond_10

    .line 10573
    const/16 v0, 0x16

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->openDeviceRetryEvent:Lcom/google/common/logging/nano/eventprotos$OpenDeviceRetryEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 10575
    :cond_10
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->changeCameraEvent:Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;

    if-eqz v0, :cond_11

    .line 10576
    const/16 v0, 0x17

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->changeCameraEvent:Lcom/google/common/logging/nano/eventprotos$ChangeCameraEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 10578
    :cond_11
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->blockShotEvent:Lcom/google/common/logging/nano/eventprotos$BlockShotEvent;

    if-eqz v0, :cond_12

    .line 10579
    const/16 v0, 0x18

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->blockShotEvent:Lcom/google/common/logging/nano/eventprotos$BlockShotEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 10581
    :cond_12
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileFailedEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;

    if-eqz v0, :cond_13

    .line 10582
    const/16 v0, 0x19

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileFailedEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileFailedEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 10584
    :cond_13
    iget-object v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileStartCommittedEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;

    if-eqz v0, :cond_14

    .line 10585
    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->captureProfileStartCommittedEvent:Lcom/google/common/logging/nano/eventprotos$CaptureProfileStartCommittedEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 10587
    :cond_14
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->clientFirstUseMillis:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_15

    .line 10588
    const/16 v0, 0x1e

    iget-wide v2, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->clientFirstUseMillis:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 10590
    :cond_15
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->runId:I

    if-eqz v0, :cond_16

    .line 10591
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->runId:I

    .line 12137
    const/16 v1, 0x1f

    const/4 v2, 0x5

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 12287
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian32(I)V

    .line 10593
    :cond_16
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->counter:I

    if-eqz v0, :cond_17

    .line 10594
    const/16 v0, 0x20

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->counter:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10596
    :cond_17
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->sessionId:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_18

    .line 10597
    iget-wide v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->sessionId:J

    .line 13130
    const/16 v2, 0x21

    invoke-virtual {p1, v2, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 13282
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian64(J)V

    .line 10599
    :cond_18
    iget v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->buildSource:I

    if-eqz v0, :cond_19

    .line 10600
    const/16 v0, 0x22

    iget v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->buildSource:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10602
    :cond_19
    iget-boolean v0, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->isTestDevice:Z

    if-eqz v0, :cond_1a

    .line 10603
    const/16 v0, 0x23

    iget-boolean v1, p0, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->isTestDevice:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 10605
    :cond_1a
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 10606
    return-void
.end method
