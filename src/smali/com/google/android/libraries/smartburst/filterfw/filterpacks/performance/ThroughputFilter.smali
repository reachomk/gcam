.class public Lcom/google/android/libraries/smartburst/filterfw/filterpacks/performance/ThroughputFilter;
.super Lcom/google/android/libraries/smartburst/filterfw/Filter;
.source "ThroughputFilter.java"


# instance fields
.field private mLastTime:J

.field private mPeriod:I

.field private mPeriodFrameCount:I

.field private mTotalFrameCount:I


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/Filter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 26
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/performance/ThroughputFilter;->mPeriod:I

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/performance/ThroughputFilter;->mLastTime:J

    .line 28
    iput v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/performance/ThroughputFilter;->mTotalFrameCount:I

    .line 29
    iput v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    .line 33
    return-void
.end method


# virtual methods
.method public getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 38
    const-class v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/performance/Throughput;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    .line 39
    new-instance v1, Lcom/google/android/libraries/smartburst/filterfw/Signature;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/filterfw/Signature;-><init>()V

    const-string v2, "frame"

    .line 40
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->any()Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v1

    const-string v2, "throughput"

    .line 41
    invoke-virtual {v1, v2, v4, v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addOutputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v1, "frame"

    .line 42
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->any()Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addOutputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v1, "period"

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 43
    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->disallowOtherPorts()Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 39
    return-object v0
.end method

.method public onInputPortOpen(Lcom/google/android/libraries/smartburst/filterfw/InputPort;)V
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "period"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "mPeriod"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    const-string v0, "frame"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/performance/ThroughputFilter;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->attachToOutputPort(Lcom/google/android/libraries/smartburst/filterfw/OutputPort;)V

    goto :goto_0
.end method

.method protected onOpen()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/performance/ThroughputFilter;->mTotalFrameCount:I

    .line 59
    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/performance/ThroughputFilter;->mLastTime:J

    .line 61
    return-void
.end method

.method protected declared-synchronized onProcess()V
    .locals 10

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    const-string v0, "frame"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/performance/ThroughputFilter;->getConnectedInputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    .line 68
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/performance/ThroughputFilter;->mTotalFrameCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/performance/ThroughputFilter;->mTotalFrameCount:I

    .line 69
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    .line 72
    iget-wide v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/performance/ThroughputFilter;->mLastTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/performance/ThroughputFilter;->mLastTime:J

    .line 75
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 78
    iget-wide v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/performance/ThroughputFilter;->mLastTime:J

    sub-long v2, v8, v2

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/performance/ThroughputFilter;->mPeriod:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 79
    const-string v1, "Thru"

    const-string v2, "It is time!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v1, "throughput"

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/performance/ThroughputFilter;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v7

    .line 81
    new-instance v1, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/performance/Throughput;

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/performance/ThroughputFilter;->mTotalFrameCount:I

    iget v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    iget-wide v4, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/performance/ThroughputFilter;->mLastTime:J

    sub-long v4, v8, v4

    .line 84
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->getElementCount()I

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/performance/Throughput;-><init>(IIJI)V

    .line 85
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->fetchAvailableFrame([I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameValue()Lcom/google/android/libraries/smartburst/filterfw/FrameValue;

    move-result-object v2

    .line 86
    invoke-virtual {v2, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameValue;->setValue(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {v7, v2}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 88
    iput-wide v8, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/performance/ThroughputFilter;->mLastTime:J

    .line 89
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    .line 92
    :cond_1
    const-string v1, "frame"

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/performance/ThroughputFilter;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
