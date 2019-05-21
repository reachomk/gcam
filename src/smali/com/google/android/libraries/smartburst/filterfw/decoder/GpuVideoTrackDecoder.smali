.class public Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder;
.super Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;
.source "GpuVideoTrackDecoder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private volatile mCurrentIsKeyFrame:Z

.field private volatile mCurrentPresentationTimeUs:J

.field private final mDistributor:Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;

.field private final mFrameServerThread:Landroid/os/HandlerThread;

.field private final mOutputHeight:I

.field private final mOutputWidth:I

.field private volatile mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(ILandroid/media/MediaFormat;Lcom/google/android/libraries/smartburst/filterfw/decoder/TrackDecoder$Listener;)V
    .locals 5

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;-><init>(ILandroid/media/MediaFormat;Lcom/google/android/libraries/smartburst/filterfw/decoder/TrackDecoder$Listener;)V

    .line 50
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "gpu-frames"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder;->mFrameServerThread:Landroid/os/HandlerThread;

    .line 60
    const-string v0, "width"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder;->mOutputWidth:I

    .line 61
    const-string v0, "height"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder;->mOutputHeight:I

    .line 63
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder;->mFrameServerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 65
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;

    new-instance v1, Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder$1;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder$1;-><init>(Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder;)V

    new-instance v2, Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder$2;

    invoke-direct {v2, p0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder$2;-><init>(Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder;)V

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder;->mFrameServerThread:Landroid/os/HandlerThread;

    .line 89
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;-><init>(Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$Listener;Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$SurfaceTextureManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder;->mDistributor:Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;

    .line 92
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder;->mDistributor:Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->setup()V

    .line 93
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder;->mSurface:Landroid/view/Surface;

    return-object p1
.end method

.method private waitForOnFrameAvailable()Z
    .locals 2

    .prologue
    .line 148
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder;->mFrameMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder;->mFrameAvailable:Z

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder;->mFrameMonitor:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    monitor-exit v1

    :goto_1
    return v0

    .line 153
    :cond_0
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_1

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected copyFrameDataTo(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameValue;Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;I)V
    .locals 6

    .prologue
    .line 165
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p4, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTexTransform;->create(IZZ)Lcom/google/android/libraries/smartburst/filterfw/SurfaceTexTransform;

    move-result-object v4

    .line 166
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder;->mDistributor:Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder;->mOutputWidth:I

    iget v3, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder;->mOutputHeight:I

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->grabFrame(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;IILcom/google/android/libraries/smartburst/filterfw/SurfaceTexTransform;Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;)Z

    .line 167
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder;->getTimestampNs()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->setTimestamp(J)V

    .line 168
    if-eqz p2, :cond_0

    .line 169
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoFrameInfo;

    iget-boolean v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder;->mCurrentIsKeyFrame:Z

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoFrameInfo;-><init>(Z)V

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameValue;->setValue(Ljava/lang/Object;)V

    .line 170
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder;->getTimestampNs()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameValue;->setTimestamp(J)V

    .line 172
    :cond_0
    return-void
.end method

.method public getTimestampNs()J
    .locals 4

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder;->mCurrentPresentationTimeUs:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method protected initMediaCodec(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 103
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder;->mDistributor:Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->waitForCommand()V

    .line 108
    :try_start_0
    const-string v0, "mime"

    .line 109
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 110
    :try_start_1
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder;->mSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 116
    :goto_0
    return-object v0

    .line 111
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 112
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    throw v0

    .line 111
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method protected onDataAvailable(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;Z)Z
    .locals 4

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder;->waitForFrameGrabs()Z

    move-result v0

    .line 127
    iget-wide v2, p4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v2, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder;->mCurrentPresentationTimeUs:J

    .line 128
    iput-boolean p5, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder;->mCurrentIsKeyFrame:Z

    .line 132
    invoke-virtual {p1, p3, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 134
    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder;->waitForOnFrameAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder;->notifyListener()V

    .line 140
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;->release()V

    .line 177
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder;->mDistributor:Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->release()V

    .line 178
    return-void
.end method
