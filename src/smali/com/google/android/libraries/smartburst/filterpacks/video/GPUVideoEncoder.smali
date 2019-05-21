.class public Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;
.super Ljava/lang/Object;
.source "GPUVideoEncoder.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/filterpacks/video/Encoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/filterpacks/video/Encoder",
        "<",
        "Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mCurrentTrack:I

.field private mEncoder:Landroid/media/MediaCodec;

.field private mEndOfStreamSent:Z

.field private final mGLSurfaceBuilder:Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;

.field private mMuxer:Landroid/media/MediaMuxer;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mEndOfStreamSent:Z

    .line 42
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mGLSurfaceBuilder:Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;

    .line 43
    return-void
.end method

.method private drainQueue()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 101
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 103
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 104
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 106
    const/4 v2, -0x3

    if-ne v1, v2, :cond_1

    .line 107
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_1
    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    .line 109
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    iput v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mCurrentTrack:I

    .line 110
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->start()V

    goto :goto_0

    .line 112
    :cond_2
    aget-object v0, v0, v1

    .line 113
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 114
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v6, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 116
    :cond_3
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v2, :cond_4

    .line 117
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    iget v3, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mCurrentTrack:I

    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v2, v3, v0, v4}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 119
    :cond_4
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 120
    return-void
.end method

.method private encodeFrame(Landroid/media/MediaCodec$BufferInfo;)V
    .locals 6

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mGLSurfaceBuilder:Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;->getOrBuild()Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;

    move-result-object v0

    .line 92
    iget-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->setPresentationTimeNs(J)V

    .line 93
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->swapBuffers()V

    .line 94
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->drainQueue()V

    .line 95
    return-void
.end method

.method public static newInstance(Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;)Lcom/google/android/libraries/smartburst/filterpacks/video/Encoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;",
            ")",
            "Lcom/google/android/libraries/smartburst/filterpacks/video/Encoder",
            "<",
            "Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;-><init>(Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;)V

    return-object v0
.end method

.method private sendEndOfStreamIfNecessary()V
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mEndOfStreamSent:Z

    if-eqz v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mEndOfStreamSent:Z

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
    const/4 v1, 0x0

    .line 58
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->sendEndOfStreamIfNecessary()V

    .line 60
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->drainQueue()V

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 64
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 65
    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 66
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mGLSurfaceBuilder:Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;->reset()V

    .line 68
    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    .line 69
    return-void
.end method

.method public get()Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mGLSurfaceBuilder:Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;->getOrBuild()Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->get()Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;

    move-result-object v0

    return-object v0
.end method

.method public onEndOfStream()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->sendEndOfStreamIfNecessary()V

    .line 85
    return-void
.end method

.method public onNewFrameAvailable(Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->encodeFrame(Landroid/media/MediaCodec$BufferInfo;)V

    .line 80
    return-void
.end method

.method public open(Landroid/media/MediaMuxer;Landroid/media/MediaFormat;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mEndOfStreamSent:Z

    .line 48
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    .line 49
    const-string v0, "mime"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 50
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v2, v2, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 51
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mGLSurfaceBuilder:Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;->setSurface(Landroid/view/Surface;)Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;

    .line 52
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GPUVideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 53
    return-void
.end method
