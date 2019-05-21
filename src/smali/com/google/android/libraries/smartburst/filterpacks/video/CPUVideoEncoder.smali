.class public Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;
.super Ljava/lang/Object;
.source "CPUVideoEncoder.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/filterpacks/video/Encoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/filterpacks/video/Encoder",
        "<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mCurrentTrack:I

.field private mEncoder:Landroid/media/MediaCodec;

.field private mEndOfStreamSent:Z

.field private mFormat:Landroid/media/MediaFormat;

.field private mLastBufferIndexProvided:I

.field private mMuxer:Landroid/media/MediaMuxer;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->mEndOfStreamSent:Z

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->mLastBufferIndexProvided:I

    .line 34
    return-void
.end method

.method private encodeFrame()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 103
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 105
    :goto_0
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    .line 106
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 122
    :goto_1
    return v0

    .line 108
    :cond_0
    const/4 v3, -0x3

    if-ne v2, v3, :cond_1

    .line 109
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_1
    const/4 v3, -0x2

    if-ne v2, v3, :cond_2

    .line 111
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v2

    iput v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->mCurrentTrack:I

    .line 112
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/media/MediaMuxer;->start()V

    goto :goto_0

    .line 114
    :cond_2
    aget-object v0, v0, v2

    .line 115
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 116
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v1, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 118
    :cond_3
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v3, :cond_4

    .line 119
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    iget v4, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->mCurrentTrack:I

    iget-object v5, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v3, v4, v0, v5}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 121
    :cond_4
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 122
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static newInstance()Lcom/google/android/libraries/smartburst/filterpacks/video/Encoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/smartburst/filterpacks/video/Encoder",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;

    invoke-direct {v0}, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;-><init>()V

    return-object v0
.end method

.method private sendEndOfStreamIfNecessary()V
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->mEndOfStreamSent:Z

    if-eqz v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterpacks/video/MediaCodecUtil;->signalEndOfStream(Landroid/media/MediaCodec;)Z

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->mEndOfStreamSent:Z

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_1

    .line 50
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->sendEndOfStreamIfNecessary()V

    .line 51
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->encodeFrame()Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    add-int/lit8 v0, v0, 0x1

    .line 53
    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 60
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 62
    return-void
.end method

.method public drainOutput()V
    .locals 1

    .prologue
    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->encodeFrame()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->get()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 69
    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-static {v1}, Lcom/google/android/libraries/smartburst/filterpacks/video/MediaCodecUtil;->dequeueInputBuffer(Landroid/media/MediaCodec;)I

    move-result v1

    .line 70
    if-ltz v1, :cond_0

    .line 71
    iput v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->mLastBufferIndexProvided:I

    .line 72
    aget-object v0, v0, v1

    return-object v0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->drainOutput()V

    goto :goto_0
.end method

.method public onEndOfStream()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->sendEndOfStreamIfNecessary()V

    .line 88
    return-void
.end method

.method public onNewFrameAvailable(Landroid/media/MediaCodec$BufferInfo;)V
    .locals 7

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->mLastBufferIndexProvided:I

    iget v2, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v4, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v6, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 83
    return-void
.end method

.method public open(Landroid/media/MediaMuxer;Landroid/media/MediaFormat;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 38
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->mFormat:Landroid/media/MediaFormat;

    .line 39
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    .line 40
    const-string v0, "mime"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 41
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->mFormat:Landroid/media/MediaFormat;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 42
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/CPUVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 43
    return-void
.end method
