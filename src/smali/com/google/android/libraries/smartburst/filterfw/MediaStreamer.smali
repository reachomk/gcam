.class public Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;
.super Ljava/lang/Object;
.source "MediaStreamer.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoStreamProvider;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# instance fields
.field private final mConsumers:Lcom/google/android/libraries/smartburst/filterfw/ConsumerFrameForwarder;

.field private final mFrameDistributor:Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;

.field private mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile mMediaHeight:I

.field private final mMediaPlayer:Landroid/media/MediaPlayer;

.field private volatile mMediaWidth:I

.field private final mPlayerThread:Landroid/os/HandlerThread;

.field private final mSurfaceTextureManager:Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$SurfaceTextureManager;

.field private final mTransform:Lcom/google/android/libraries/smartburst/filterfw/SurfaceTexTransform;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v2, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->mMediaWidth:I

    .line 60
    iput v2, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->mMediaHeight:I

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 178
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer$3;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer$3;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->mSurfaceTextureManager:Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$SurfaceTextureManager;

    .line 83
    invoke-static {p1, p2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 86
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer$1;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer$1;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 94
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer$2;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer$2;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 102
    invoke-static {p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/util/MediaUtils;->getMediaRotation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 103
    invoke-static {v0, v3, v2}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTexTransform;->create(IZZ)Lcom/google/android/libraries/smartburst/filterfw/SurfaceTexTransform;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->mTransform:Lcom/google/android/libraries/smartburst/filterfw/SurfaceTexTransform;

    .line 106
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/ConsumerFrameForwarder;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/smartburst/filterfw/ConsumerFrameForwarder;-><init>(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->mConsumers:Lcom/google/android/libraries/smartburst/filterfw/ConsumerFrameForwarder;

    .line 109
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MediaStreamer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->mPlayerThread:Landroid/os/HandlerThread;

    .line 110
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->mPlayerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 111
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->mConsumers:Lcom/google/android/libraries/smartburst/filterfw/ConsumerFrameForwarder;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->mSurfaceTextureManager:Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$SurfaceTextureManager;

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->mPlayerThread:Landroid/os/HandlerThread;

    .line 112
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;-><init>(Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$Listener;Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$SurfaceTextureManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->mFrameDistributor:Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;

    .line 113
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->mFrameDistributor:Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->setup()V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 1

    .prologue
    .line 72
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->onStop()V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;I)I
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->mMediaWidth:I

    return p1
.end method

.method static synthetic access$202(Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;I)I
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->mMediaHeight:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private onStop()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->mConsumers:Lcom/google/android/libraries/smartburst/filterfw/ConsumerFrameForwarder;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/ConsumerFrameForwarder;->sendStopNotification()V

    .line 176
    return-void
.end method


# virtual methods
.method public addVideoFrameConsumer(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->mConsumers:Lcom/google/android/libraries/smartburst/filterfw/ConsumerFrameForwarder;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/ConsumerFrameForwarder;->addConsumer(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;)V

    .line 148
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->release()V

    .line 160
    :cond_0
    return-void
.end method

.method public getDurationNs()J
    .locals 4

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public grabVideoFrame(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameValue;Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;)Z
    .locals 6

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->mFrameDistributor:Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->mMediaWidth:I

    iget v3, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->mMediaHeight:I

    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->mTransform:Lcom/google/android/libraries/smartburst/filterfw/SurfaceTexTransform;

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->grabFrame(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;IILcom/google/android/libraries/smartburst/filterfw/SurfaceTexTransform;Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 169
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 170
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->mFrameDistributor:Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->release()V

    .line 171
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->mPlayerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 172
    return-void
.end method

.method public removeVideoFrameConsumer(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->mConsumers:Lcom/google/android/libraries/smartburst/filterfw/ConsumerFrameForwarder;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/ConsumerFrameForwarder;->removeConsumer(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;)V

    .line 153
    return-void
.end method

.method public skipVideoFrame()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->mConsumers:Lcom/google/android/libraries/smartburst/filterfw/ConsumerFrameForwarder;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/ConsumerFrameForwarder;->sendStartNotification()V

    .line 119
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 120
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 125
    return-void
.end method
