.class public Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;
.super Ljava/lang/Object;
.source "SurfaceTextureStreamer.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# static fields
.field private static final RELEASE_DELAY_MS:J = 0x7d0L


# instance fields
.field private final mConsumers:Lcom/google/android/libraries/smartburst/filterfw/ConsumerFrameForwarder;

.field private final mDistributionHandler:Landroid/os/Handler;

.field private final mDistributionThread:Landroid/os/HandlerThread;

.field private final mFrameDistributor:Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;

.field private final mInputHeight:I

.field private final mInputWidth:I

.field private final mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mShuttingDown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mTransform:Lcom/google/android/libraries/smartburst/filterfw/SurfaceTexTransform;


# direct methods
.method public constructor <init>(Landroid/graphics/SurfaceTexture;IILcom/google/android/libraries/smartburst/filterfw/SurfaceTexTransform;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;->mShuttingDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    iput p2, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;->mInputWidth:I

    .line 84
    iput p3, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;->mInputHeight:I

    .line 85
    iput-object p4, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;->mTransform:Lcom/google/android/libraries/smartburst/filterfw/SurfaceTexTransform;

    .line 86
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TextureStreamer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;->mDistributionThread:Landroid/os/HandlerThread;

    .line 87
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;->mDistributionThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 88
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/ConsumerFrameForwarder;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/smartburst/filterfw/ConsumerFrameForwarder;-><init>(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;->mConsumers:Lcom/google/android/libraries/smartburst/filterfw/ConsumerFrameForwarder;

    .line 89
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;->mDistributionThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;->mDistributionHandler:Landroid/os/Handler;

    .line 90
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;->mConsumers:Lcom/google/android/libraries/smartburst/filterfw/ConsumerFrameForwarder;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;->mDistributionHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;-><init>(Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$Listener;Landroid/graphics/SurfaceTexture;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;->mFrameDistributor:Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;)Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;->mFrameDistributor:Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;->mShuttingDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;)Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;->mDistributionThread:Landroid/os/HandlerThread;

    return-object v0
.end method


# virtual methods
.method public addVideoFrameConsumer(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;->mConsumers:Lcom/google/android/libraries/smartburst/filterfw/ConsumerFrameForwarder;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/ConsumerFrameForwarder;->addConsumer(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;)V

    .line 164
    return-void
.end method

.method public close()V
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;->mConsumers:Lcom/google/android/libraries/smartburst/filterfw/ConsumerFrameForwarder;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/ConsumerFrameForwarder;->sendStopNotification()V

    .line 112
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;->mDistributionHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer$1;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer$1;-><init>(Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    :cond_0
    return-void
.end method

.method public grabVideoFrame(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameValue;Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 131
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;->mFrameDistributor:Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;->mInputWidth:I

    iget v3, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;->mInputHeight:I

    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;->mTransform:Lcom/google/android/libraries/smartburst/filterfw/SurfaceTexTransform;

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->grabFrame(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;IILcom/google/android/libraries/smartburst/filterfw/SurfaceTexTransform;Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    if-eqz p2, :cond_0

    .line 134
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoFrameInfo;

    invoke-direct {v0, v6}, Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoFrameInfo;-><init>(Z)V

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameValue;->setValue(Ljava/lang/Object;)V

    .line 136
    :cond_0
    const/4 v0, 0x1

    .line 138
    :goto_0
    return v0

    :cond_1
    move v0, v6

    goto :goto_0
.end method

.method public removeVideoFrameConsumer(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;->mConsumers:Lcom/google/android/libraries/smartburst/filterfw/ConsumerFrameForwarder;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/ConsumerFrameForwarder;->removeConsumer(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;)V

    .line 169
    return-void
.end method

.method public skipVideoFrame()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;->mFrameDistributor:Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->setup()V

    .line 99
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;->mConsumers:Lcom/google/android/libraries/smartburst/filterfw/ConsumerFrameForwarder;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/ConsumerFrameForwarder;->sendStartNotification()V

    .line 100
    return-void
.end method

.method public waitForCommand()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;->mShuttingDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;->mDistributionThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;->mFrameDistributor:Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->waitForCommand()V

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    goto :goto_0
.end method
