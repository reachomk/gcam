.class public Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;
.super Lcom/google/android/libraries/smartburst/filterfw/Filter;
.source "VideoProviderSource.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;


# static fields
.field private static final DEBUG:Z = false

.field private static final NS_IN_S:J = 0x3b9aca00L

.field private static final STATE_END_OF_STREAM:I = 0x2

.field private static final STATE_RUNNING:I = 0x0

.field private static final STATE_STOPPING:I = 0x1

.field private static final TIMESTAMP_FILTER_SIZE:I = 0x12c


# instance fields
.field private mCloseOnStop:Z

.field private mFrameIntervalNs:J

.field private mHasNewFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMaxDim:I

.field private mMinDim:I

.field private mMultipleOfX:I

.field private final mOutputType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

.field private mPushEOSFrame:Z

.field private mScaler:Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;

.field private volatile mState:I

.field private mTargetFrameRate:F

.field private final mTimestampQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoFrameProvider:Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/Filter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mHasNewFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    iput-boolean v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mCloseOnStop:Z

    .line 42
    iput-boolean v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mPushEOSFrame:Z

    .line 43
    iput v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mMaxDim:I

    .line 44
    iput v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mMinDim:I

    .line 45
    iput v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mMultipleOfX:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mScaler:Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;

    .line 47
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mTargetFrameRate:F

    .line 48
    iput v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mState:I

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mFrameIntervalNs:J

    .line 50
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mTimestampQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 55
    const/16 v0, 0x12d

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mOutputType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    .line 56
    return-void
.end method

.method private measureAverageOutputFrameRate(J)F
    .locals 3

    .prologue
    .line 250
    const/4 v0, 0x0

    .line 251
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mTimestampQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mTimestampQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 253
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mTimestampQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v2

    .line 254
    sub-long v0, p1, v0

    long-to-float v0, v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    .line 256
    const v1, 0x4e6e6b28    # 1.0E9f

    div-float v0, v1, v0

    .line 258
    :cond_0
    return v0
.end method

.method private nextFrame()Z
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mHasNewFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    .line 204
    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->enterSleepState()V

    .line 207
    :cond_0
    return v0
.end method

.method private setupCaptureThread()V
    .locals 1

    .prologue
    .line 199
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->currentTarget()Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->getExternalIdentityShader()Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    .line 200
    return-void
.end method

.method private shouldKeepFrame(J)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 212
    iget-wide v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mFrameIntervalNs:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v0

    .line 216
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->measureAverageOutputFrameRate(J)F

    move-result v1

    .line 217
    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mTargetFrameRate:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTimestampQueue(J)V
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mTimestampQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v0

    const/16 v1, 0x12c

    if-ne v0, v1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mTimestampQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->remove()Ljava/lang/Object;

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mTimestampQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 240
    return-void
.end method


# virtual methods
.method public forceClose()V
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mPushEOSFrame:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mState:I

    .line 63
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->wakeUp()V

    .line 64
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 68
    const-class v0, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    .line 69
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v1

    .line 70
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v2

    .line 71
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    .line 72
    new-instance v4, Lcom/google/android/libraries/smartburst/filterfw/Signature;

    invoke-direct {v4}, Lcom/google/android/libraries/smartburst/filterfw/Signature;-><init>()V

    const-string v5, "provider"

    .line 73
    invoke-virtual {v4, v5, v7, v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v4, "closeOnStop"

    .line 74
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v4, "pushEOSFrame"

    .line 75
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v1, "maxDimension"

    .line 76
    invoke-virtual {v0, v1, v6, v2}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v1, "minDimension"

    .line 77
    invoke-virtual {v0, v1, v6, v2}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v1, "multipleOfX"

    .line 78
    invoke-virtual {v0, v1, v6, v2}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v1, "frameRate"

    .line 79
    invoke-virtual {v0, v1, v6, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v1, "video"

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mOutputType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    .line 80
    invoke-virtual {v0, v1, v7, v2}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addOutputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->disallowOtherPorts()Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 72
    return-object v0
.end method

.method protected onClose()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mVideoFrameProvider:Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;

    invoke-interface {v0, p0}, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;->removeVideoFrameConsumer(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;)V

    .line 164
    return-void
.end method

.method public onInputPortOpen(Lcom/google/android/libraries/smartburst/filterfw/InputPort;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 86
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "provider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    const-string v0, "mVideoFrameProvider"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "closeOnStop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    const-string v0, "mCloseOnStop"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pushEOSFrame"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    const-string v0, "mPushEOSFrame"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    goto :goto_0

    .line 95
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "maxDimension"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    const-string v0, "mMaxDim"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    goto :goto_0

    .line 98
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "minDimension"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 99
    const-string v0, "mMinDim"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    goto :goto_0

    .line 101
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipleOfX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 102
    const-string v0, "mMultipleOfX"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    goto :goto_0

    .line 104
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "frameRate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "mTargetFrameRate"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    goto :goto_0
.end method

.method protected onOpen()V
    .locals 2

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->setupCaptureThread()V

    .line 113
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mHasNewFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 114
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mVideoFrameProvider:Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;

    invoke-interface {v0, p0}, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;->addVideoFrameConsumer(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;)V

    .line 115
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mTargetFrameRate:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 116
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mFrameIntervalNs:J

    .line 117
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mTimestampQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 118
    return-void

    .line 116
    :cond_0
    const v0, 0x4e6e6b28    # 1.0E9f

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mTargetFrameRate:F

    div-float/2addr v0, v1

    float-to-long v0, v0

    goto :goto_0
.end method

.method protected onProcess()V
    .locals 5

    .prologue
    .line 122
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 123
    const-string v1, "video"

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v1

    .line 124
    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mState:I

    packed-switch v2, :pswitch_data_0

    .line 155
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mState:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Illegal state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->nextFrame()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->fetchAvailableFrame([I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v0

    .line 128
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mScaler:Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;

    if-nez v2, :cond_0

    .line 129
    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mMaxDim:I

    if-lez v2, :cond_2

    .line 130
    new-instance v2, Lcom/google/android/libraries/smartburst/filterfw/geometry/MultipleOfXScaler;

    new-instance v3, Lcom/google/android/libraries/smartburst/filterfw/geometry/MaxDimensionScaler;

    iget v4, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mMaxDim:I

    invoke-direct {v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/geometry/MaxDimensionScaler;-><init>(I)V

    iget v4, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mMultipleOfX:I

    invoke-direct {v2, v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/geometry/MultipleOfXScaler;-><init>(Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;I)V

    iput-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mScaler:Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;

    .line 139
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mVideoFrameProvider:Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mScaler:Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;->grabVideoFrame(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameValue;Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 141
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getTimestamp()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->updateTimestampQueue(J)V

    .line 159
    :cond_1
    :goto_1
    return-void

    .line 132
    :cond_2
    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mMinDim:I

    if-lez v2, :cond_3

    .line 133
    new-instance v2, Lcom/google/android/libraries/smartburst/filterfw/geometry/MultipleOfXScaler;

    new-instance v3, Lcom/google/android/libraries/smartburst/filterfw/geometry/MinDimensionScaler;

    iget v4, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mMinDim:I

    invoke-direct {v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/geometry/MinDimensionScaler;-><init>(I)V

    iget v4, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mMultipleOfX:I

    invoke-direct {v2, v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/geometry/MultipleOfXScaler;-><init>(Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;I)V

    iput-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mScaler:Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;

    goto :goto_0

    .line 136
    :cond_3
    new-instance v2, Lcom/google/android/libraries/smartburst/filterfw/geometry/MultipleOfXScaler;

    iget v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mMultipleOfX:I

    invoke-direct {v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/geometry/MultipleOfXScaler;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mScaler:Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;

    goto :goto_0

    .line 146
    :pswitch_1
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->fetchAvailableFrame([I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v0

    .line 147
    const-wide/16 v2, -0x2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->setTimestamp(J)V

    .line 148
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 149
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mState:I

    goto :goto_1

    .line 152
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->requestClose()V

    goto :goto_1

    .line 122
    nop

    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data

    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onVideoFrameAvailable(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;J)V
    .locals 2

    .prologue
    .line 168
    invoke-direct {p0, p2, p3}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->shouldKeepFrame(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    invoke-interface {p1}, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;->skipVideoFrame()V

    .line 174
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mHasNewFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 172
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->wakeUp()V

    goto :goto_0
.end method

.method public onVideoStreamError(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 190
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "VideoProvider encountered error!"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public onVideoStreamStarted()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public onVideoStreamStopped()V
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->mCloseOnStop:Z

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->forceClose()V

    .line 186
    :cond_0
    return-void
.end method
