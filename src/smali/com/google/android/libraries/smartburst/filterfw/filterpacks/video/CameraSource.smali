.class public Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/CameraSource;
.super Lcom/google/android/libraries/smartburst/filterfw/Filter;
.source "CameraSource.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;


# instance fields
.field private mMultipleOfX:I

.field private mNewFrameAvailable:Z

.field private mOutputType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

.field private mScaler:Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;

.field private mUseWallClock:Z


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/Filter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 36
    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/CameraSource;->mNewFrameAvailable:Z

    .line 38
    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/CameraSource;->mUseWallClock:Z

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/CameraSource;->mMultipleOfX:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/CameraSource;->mScaler:Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;

    .line 44
    const/16 v0, 0x12d

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/CameraSource;->mOutputType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    .line 45
    return-void
.end method

.method private declared-synchronized nextFrame()Z
    .locals 2

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/CameraSource;->mNewFrameAvailable:Z

    .line 107
    if-eqz v0, :cond_0

    .line 108
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/CameraSource;->mNewFrameAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :goto_0
    monitor-exit p0

    return v0

    .line 110
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/CameraSource;->enterSleepState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 49
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/google/android/libraries/smartburst/filterfw/Signature;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/filterfw/Signature;-><init>()V

    const-string v2, "useWallClock"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 51
    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v1

    const-string v2, "multipleOfX"

    .line 52
    invoke-virtual {v1, v2, v4, v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v1, "video"

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/CameraSource;->mOutputType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    .line 53
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addOutputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->disallowOtherPorts()Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 50
    return-object v0
.end method

.method protected onClose()V
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/CameraSource;->getContext()Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->getCameraStreamer()Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->removeVideoFrameConsumer(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;)V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/CameraSource;->mNewFrameAvailable:Z

    .line 103
    return-void
.end method

.method public onInputPortOpen(Lcom/google/android/libraries/smartburst/filterfw/InputPort;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 59
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "useWallClock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const-string v0, "mUseWallClock"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipleOfX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "mMultipleOfX"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    goto :goto_0
.end method

.method protected onOpen()V
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/CameraSource;->getContext()Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->getCameraStreamer()Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->addVideoFrameConsumer(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;)V

    .line 71
    return-void
.end method

.method protected onProcess()V
    .locals 8

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/CameraSource;->nextFrame()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/CameraSource;->getContext()Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->getCameraStreamer()Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;

    move-result-object v0

    .line 77
    const-string v1, "video"

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/CameraSource;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v1

    .line 80
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 81
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/CameraSource;->mOutputType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    invoke-static {v3, v2}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->create(Lcom/google/android/libraries/smartburst/filterfw/FrameType;[I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v2

    .line 83
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/CameraSource;->mScaler:Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;

    if-nez v3, :cond_0

    .line 84
    new-instance v3, Lcom/google/android/libraries/smartburst/filterfw/geometry/MultipleOfXScaler;

    iget v4, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/CameraSource;->mMultipleOfX:I

    invoke-direct {v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/geometry/MultipleOfXScaler;-><init>(I)V

    iput-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/CameraSource;->mScaler:Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;

    .line 88
    :cond_0
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/CameraSource;->mScaler:Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->getLatestFrame(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/CameraSource;->mUseWallClock:Z

    if-eqz v0, :cond_1

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    mul-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->setTimestamp(J)V

    .line 93
    :cond_1
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 95
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->release()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 97
    :cond_3
    return-void

    .line 80
    nop

    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data
.end method

.method public onVideoFrameAvailable(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;J)V
    .locals 1

    .prologue
    .line 117
    monitor-enter p0

    .line 118
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/CameraSource;->mNewFrameAvailable:Z

    .line 119
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/CameraSource;->wakeUp()V

    .line 121
    return-void

    .line 119
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onVideoStreamError(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 137
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Camera encountered an error. Aborting."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public onVideoStreamStarted()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public onVideoStreamStopped()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method
